
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {scalar_t__ dma_base; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_5__ {scalar_t__ waiting_for_dma; TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;


 scalar_t__ ATA_DMA_STATUS ;
 int inb (scalar_t__) ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static void ich_clear_irq(ide_drive_t *drive)
{
 ide_hwif_t *hwif = drive->hwif;
 u8 dma_stat;






 if (drive->waiting_for_dma || hwif->dma_base == 0)
  return;


 dma_stat = inb(hwif->dma_base + ATA_DMA_STATUS);

 outb(dma_stat, hwif->dma_base + ATA_DMA_STATUS);
}
