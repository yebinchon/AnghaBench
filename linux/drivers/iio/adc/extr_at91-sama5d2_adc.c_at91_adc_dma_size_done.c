
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dma_tx_state {int residue; } ;
struct TYPE_3__ {int rx_buf_sz; int buf_idx; TYPE_2__* dma_chan; } ;
struct at91_adc_state {TYPE_1__ dma_st; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;
struct TYPE_4__ {int cookie; } ;


 int DMA_IN_PROGRESS ;
 int dmaengine_tx_status (TYPE_2__*,int ,struct dma_tx_state*) ;

__attribute__((used)) static int at91_adc_dma_size_done(struct at91_adc_state *st)
{
 struct dma_tx_state state;
 enum dma_status status;
 int i, size;

 status = dmaengine_tx_status(st->dma_st.dma_chan,
         st->dma_st.dma_chan->cookie,
         &state);
 if (status != DMA_IN_PROGRESS)
  return 0;


 i = st->dma_st.rx_buf_sz - state.residue;


 if (i >= st->dma_st.buf_idx)
  size = i - st->dma_st.buf_idx;
 else
  size = st->dma_st.rx_buf_sz + i - st->dma_st.buf_idx;
 return size;
}
