
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdc_dma {int periph_regs; } ;
struct mdc_chan {int periph; int chan_nr; struct mdc_dma* mdma; } ;


 int PISTACHIO_CR_PERIPH_DMA_ROUTE (int ) ;
 int PISTACHIO_CR_PERIPH_DMA_ROUTE_MASK ;
 int PISTACHIO_CR_PERIPH_DMA_ROUTE_SHIFT (int ) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static void pistachio_mdc_enable_chan(struct mdc_chan *mchan)
{
 struct mdc_dma *mdma = mchan->mdma;

 regmap_update_bits(mdma->periph_regs,
      PISTACHIO_CR_PERIPH_DMA_ROUTE(mchan->chan_nr),
      PISTACHIO_CR_PERIPH_DMA_ROUTE_MASK <<
      PISTACHIO_CR_PERIPH_DMA_ROUTE_SHIFT(mchan->chan_nr),
      mchan->periph <<
      PISTACHIO_CR_PERIPH_DMA_ROUTE_SHIFT(mchan->chan_nr));
}
