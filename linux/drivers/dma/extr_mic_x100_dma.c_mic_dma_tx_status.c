
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mic_dma_chan {int dummy; } ;
struct dma_tx_state {int dummy; } ;
struct dma_chan {int dummy; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef int dma_cookie_t ;


 scalar_t__ DMA_COMPLETE ;
 int dma_cookie_status (struct dma_chan*,int ,struct dma_tx_state*) ;
 int mic_dma_cleanup (struct mic_dma_chan*) ;
 struct mic_dma_chan* to_mic_dma_chan (struct dma_chan*) ;

__attribute__((used)) static enum dma_status
mic_dma_tx_status(struct dma_chan *ch, dma_cookie_t cookie,
    struct dma_tx_state *txstate)
{
 struct mic_dma_chan *mic_ch = to_mic_dma_chan(ch);

 if (DMA_COMPLETE != dma_cookie_status(ch, cookie, txstate))
  mic_dma_cleanup(mic_ch);

 return dma_cookie_status(ch, cookie, txstate);
}
