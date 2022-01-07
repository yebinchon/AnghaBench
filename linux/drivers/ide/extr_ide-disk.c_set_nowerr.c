
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bad_wstat; int dev_flags; } ;
typedef TYPE_1__ ide_drive_t ;


 int BAD_R_STAT ;
 int BAD_W_STAT ;
 int EINVAL ;
 int IDE_DFLAG_NOWERR ;

__attribute__((used)) static int set_nowerr(ide_drive_t *drive, int arg)
{
 if (arg < 0 || arg > 1)
  return -EINVAL;

 if (arg)
  drive->dev_flags |= IDE_DFLAG_NOWERR;
 else
  drive->dev_flags &= ~IDE_DFLAG_NOWERR;

 drive->bad_wstat = arg ? BAD_R_STAT : BAD_W_STAT;

 return 0;
}
