
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct axi_dma_chip {TYPE_2__* dw; } ;
struct TYPE_4__ {int * chan; TYPE_1__* hdata; } ;
struct TYPE_3__ {size_t nr_channels; } ;


 int DWAXIDMAC_IRQ_ALL ;
 int axi_chan_disable (int *) ;
 int axi_chan_irq_disable (int *,int ) ;

__attribute__((used)) static void axi_dma_hw_init(struct axi_dma_chip *chip)
{
 u32 i;

 for (i = 0; i < chip->dw->hdata->nr_channels; i++) {
  axi_chan_irq_disable(&chip->dw->chan[i], DWAXIDMAC_IRQ_ALL);
  axi_chan_disable(&chip->dw->chan[i]);
 }
}
