
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_chan {int rx_status; } ;
struct dma_tx_state {int dummy; } ;
struct dma_chan {int dummy; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef int dma_cookie_t ;


 int dma_cookie_status (struct dma_chan*,int ,struct dma_tx_state*) ;
 int dma_set_residue (struct dma_tx_state*,int ) ;
 struct mtk_chan* to_mtk_uart_apdma_chan (struct dma_chan*) ;

__attribute__((used)) static enum dma_status mtk_uart_apdma_tx_status(struct dma_chan *chan,
      dma_cookie_t cookie,
      struct dma_tx_state *txstate)
{
 struct mtk_chan *c = to_mtk_uart_apdma_chan(chan);
 enum dma_status ret;

 ret = dma_cookie_status(chan, cookie, txstate);
 if (!txstate)
  return ret;

 dma_set_residue(txstate, c->rx_status);

 return ret;
}
