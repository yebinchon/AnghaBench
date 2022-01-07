
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int rqsize; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_7__ {TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;


 int is_dev_seagate_sata (TYPE_2__*) ;
 int is_sata (TYPE_1__*) ;

__attribute__((used)) static void sil_quirkproc(ide_drive_t *drive)
{
 ide_hwif_t *hwif = drive->hwif;


 if (!is_sata(hwif) || !is_dev_seagate_sata(drive))
  hwif->rqsize = 128;
}
