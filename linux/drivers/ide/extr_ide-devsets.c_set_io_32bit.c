
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dev_flags; int io_32bit; } ;
typedef TYPE_1__ ide_drive_t ;


 int EINVAL ;
 int EPERM ;
 int IDE_DFLAG_NO_IO_32BIT ;
 int SUPPORT_VLB_SYNC ;

__attribute__((used)) static int set_io_32bit(ide_drive_t *drive, int arg)
{
 if (drive->dev_flags & IDE_DFLAG_NO_IO_32BIT)
  return -EPERM;

 if (arg < 0 || arg > 1 + (SUPPORT_VLB_SYNC << 1))
  return -EINVAL;

 drive->io_32bit = arg;

 return 0;
}
