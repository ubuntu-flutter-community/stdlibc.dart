import 'dart:io';

import 'bsd/bsd.dart';
import 'errno.dart';
import 'fcntl.dart';
import 'gnu/gnu.dart';
import 'macros.g.dart';
import 'mman.dart';
import 'stat.dart';
import 'stdlib.dart';
import 'string.dart';
import 'sysinfo.dart';
import 'uname.dart';
import 'unistd.dart';

final libc = Platform.isMacOS ? BsdLibC() : GnuLibC();

abstract class LibC
    with
        ErrnoMixin,
        FcntlMixin,
        MacroMixin,
        MmanMixin,
        StatMixin,
        StdlibMixin,
        StringMixin,
        SysinfoMixin,
        UnameMixin,
        UnistdMixin {}
