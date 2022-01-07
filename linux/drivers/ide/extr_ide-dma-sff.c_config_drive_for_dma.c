
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_5__ {int host_flags; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_6__ {int* id; scalar_t__ media; TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;


 size_t ATA_ID_FIELD_VALID ;
 size_t ATA_ID_MWDMA_MODES ;
 size_t ATA_ID_SWDMA_MODES ;
 size_t ATA_ID_UDMA_MODES ;
 int IDE_HFLAG_NO_ATAPI_DMA ;
 scalar_t__ ide_disk ;
 scalar_t__ ide_dma_good_drive (TYPE_2__*) ;

int config_drive_for_dma(ide_drive_t *drive)
{
 ide_hwif_t *hwif = drive->hwif;
 u16 *id = drive->id;

 if (drive->media != ide_disk) {
  if (hwif->host_flags & IDE_HFLAG_NO_ATAPI_DMA)
   return 0;
 }





 if ((id[ATA_ID_FIELD_VALID] & 4) &&
     ((id[ATA_ID_UDMA_MODES] >> 8) & 0x7f))
  return 1;





 if ((id[ATA_ID_MWDMA_MODES] & 0x404) == 0x404 ||
     (id[ATA_ID_SWDMA_MODES] & 0x404) == 0x404)
  return 1;


 if (ide_dma_good_drive(drive))
  return 1;

 return 0;
}
