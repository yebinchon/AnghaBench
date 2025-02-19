
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_8__ {TYPE_1__* dma_ops; } ;
typedef TYPE_2__ ide_hwif_t ;
struct TYPE_9__ {int dn; TYPE_2__* hwif; } ;
typedef TYPE_3__ ide_drive_t ;
struct TYPE_7__ {int (* dma_sff_read_status ) (TYPE_2__*) ;} ;


 int ide_dma_sff_write_status (TYPE_2__*,int) ;
 int stub1 (TYPE_2__*) ;

void ide_dma_host_set(ide_drive_t *drive, int on)
{
 ide_hwif_t *hwif = drive->hwif;
 u8 unit = drive->dn & 1;
 u8 dma_stat = hwif->dma_ops->dma_sff_read_status(hwif);

 if (on)
  dma_stat |= (1 << (5 + unit));
 else
  dma_stat &= ~(1 << (5 + unit));

 ide_dma_sff_write_status(hwif, dma_stat);
}
