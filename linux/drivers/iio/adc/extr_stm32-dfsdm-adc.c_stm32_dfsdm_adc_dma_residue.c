
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_dfsdm_adc {unsigned int buf_sz; unsigned int bufi; TYPE_1__* dma_chan; } ;
struct dma_tx_state {unsigned int residue; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;
struct TYPE_2__ {int cookie; } ;


 int DMA_IN_PROGRESS ;
 int dmaengine_tx_status (TYPE_1__*,int ,struct dma_tx_state*) ;

__attribute__((used)) static unsigned int stm32_dfsdm_adc_dma_residue(struct stm32_dfsdm_adc *adc)
{
 struct dma_tx_state state;
 enum dma_status status;

 status = dmaengine_tx_status(adc->dma_chan,
         adc->dma_chan->cookie,
         &state);
 if (status == DMA_IN_PROGRESS) {

  unsigned int i = adc->buf_sz - state.residue;
  unsigned int size;


  if (i >= adc->bufi)
   size = i - adc->bufi;
  else
   size = adc->buf_sz + i - adc->bufi;

  return size;
 }

 return 0;
}
