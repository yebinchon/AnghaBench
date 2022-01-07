
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_8__ {scalar_t__ dma_base; TYPE_1__* dma_ops; } ;
typedef TYPE_2__ ide_hwif_t ;
struct TYPE_9__ {TYPE_2__* hwif; } ;
typedef TYPE_3__ ide_drive_t ;
struct TYPE_7__ {int (* dma_sff_read_status ) (TYPE_2__*) ;} ;


 scalar_t__ ATA_DMA_CMD ;
 int inb (scalar_t__) ;
 int ns87415_prepare_drive (TYPE_3__*,int ) ;
 int outb (int,scalar_t__) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static int ns87415_dma_end(ide_drive_t *drive)
{
 ide_hwif_t *hwif = drive->hwif;
 u8 dma_stat = 0, dma_cmd = 0;

 dma_stat = hwif->dma_ops->dma_sff_read_status(hwif);

 dma_cmd = inb(hwif->dma_base + ATA_DMA_CMD);

 outb(dma_cmd & ~1, hwif->dma_base + ATA_DMA_CMD);

 dma_cmd = inb(hwif->dma_base + ATA_DMA_CMD);
 outb(dma_cmd | 6, hwif->dma_base + ATA_DMA_CMD);

 ns87415_prepare_drive(drive, 0);


 return (dma_stat & 7) != 4;
}
