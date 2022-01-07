
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ swdma_mask; scalar_t__ mwdma_mask; scalar_t__ ultra_mask; int dma_base; } ;
typedef TYPE_1__ ide_hwif_t ;


 scalar_t__ no_piix_dma ;

__attribute__((used)) static void init_hwif_piix(ide_hwif_t *hwif)
{
 if (!hwif->dma_base)
  return;

 if (no_piix_dma)
  hwif->ultra_mask = hwif->mwdma_mask = hwif->swdma_mask = 0;
}
