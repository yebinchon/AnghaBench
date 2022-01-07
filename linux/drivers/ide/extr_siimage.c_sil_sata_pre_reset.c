
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ media; int special_flags; } ;
typedef TYPE_1__ ide_drive_t ;


 int IDE_SFLAG_RECALIBRATE ;
 int IDE_SFLAG_SET_GEOMETRY ;
 scalar_t__ ide_disk ;

__attribute__((used)) static void sil_sata_pre_reset(ide_drive_t *drive)
{
 if (drive->media == ide_disk) {
  drive->special_flags &=
   ~(IDE_SFLAG_SET_GEOMETRY | IDE_SFLAG_RECALIBRATE);
 }
}
