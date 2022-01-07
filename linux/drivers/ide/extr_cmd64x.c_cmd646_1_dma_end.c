
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {scalar_t__ dma_base; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_5__ {TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;


 scalar_t__ ATA_DMA_CMD ;
 scalar_t__ ATA_DMA_STATUS ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static int cmd646_1_dma_end(ide_drive_t *drive)
{
 ide_hwif_t *hwif = drive->hwif;
 u8 dma_stat = 0, dma_cmd = 0;


 dma_stat = inb(hwif->dma_base + ATA_DMA_STATUS);

 dma_cmd = inb(hwif->dma_base + ATA_DMA_CMD);

 outb(dma_cmd & ~1, hwif->dma_base + ATA_DMA_CMD);

 outb(dma_stat | 6, hwif->dma_base + ATA_DMA_STATUS);

 return (dma_stat & 7) != 4;
}
