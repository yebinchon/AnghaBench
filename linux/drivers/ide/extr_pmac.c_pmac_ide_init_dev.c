
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* mdev; } ;
typedef TYPE_3__ pmac_ide_hwif_t ;
struct TYPE_9__ {int parent; } ;
struct TYPE_12__ {TYPE_1__ gendev; } ;
typedef TYPE_4__ ide_hwif_t ;
struct TYPE_13__ {int dev_flags; TYPE_4__* hwif; } ;
typedef TYPE_5__ ide_drive_t ;
struct TYPE_10__ {int media_bay; } ;


 int IDE_DFLAG_NOPROBE ;
 scalar_t__ MB_CD ;
 scalar_t__ check_media_bay (int ) ;
 TYPE_3__* dev_get_drvdata (int ) ;
 scalar_t__ on_media_bay (TYPE_3__*) ;

__attribute__((used)) static void pmac_ide_init_dev(ide_drive_t *drive)
{
 ide_hwif_t *hwif = drive->hwif;
 pmac_ide_hwif_t *pmif = dev_get_drvdata(hwif->gendev.parent);

 if (on_media_bay(pmif)) {
  if (check_media_bay(pmif->mdev->media_bay) == MB_CD) {
   drive->dev_flags &= ~IDE_DFLAG_NOPROBE;
   return;
  }
  drive->dev_flags |= IDE_DFLAG_NOPROBE;
 }
}
