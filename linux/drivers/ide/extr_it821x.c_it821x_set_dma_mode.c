
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int ide_hwif_t ;
struct TYPE_5__ {scalar_t__ dma_mode; } ;
typedef TYPE_1__ ide_drive_t ;


 scalar_t__ const XFER_MW_DMA_0 ;
 scalar_t__ const XFER_MW_DMA_2 ;
 scalar_t__ const XFER_UDMA_0 ;
 scalar_t__ const XFER_UDMA_6 ;
 int it821x_tune_mwdma (TYPE_1__*,scalar_t__ const) ;
 int it821x_tune_udma (TYPE_1__*,scalar_t__ const) ;

__attribute__((used)) static void it821x_set_dma_mode(ide_hwif_t *hwif, ide_drive_t *drive)
{
 const u8 speed = drive->dma_mode;






 if (speed >= XFER_UDMA_0 && speed <= XFER_UDMA_6)
  it821x_tune_udma(drive, speed - XFER_UDMA_0);
 else if (speed >= XFER_MW_DMA_0 && speed <= XFER_MW_DMA_2)
  it821x_tune_mwdma(drive, speed - XFER_MW_DMA_0);
}
