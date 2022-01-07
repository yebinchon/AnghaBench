
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_tx_state {int dummy; } ;
struct dma_chan {int dummy; } ;
struct cppi41_channel {int residue; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef int dma_cookie_t ;


 int dma_cookie_status (struct dma_chan*,int ,struct dma_tx_state*) ;
 int dma_set_residue (struct dma_tx_state*,int ) ;
 struct cppi41_channel* to_cpp41_chan (struct dma_chan*) ;

__attribute__((used)) static enum dma_status cppi41_dma_tx_status(struct dma_chan *chan,
 dma_cookie_t cookie, struct dma_tx_state *txstate)
{
 struct cppi41_channel *c = to_cpp41_chan(chan);
 enum dma_status ret;

 ret = dma_cookie_status(chan, cookie, txstate);

 dma_set_residue(txstate, c->residue);

 return ret;
}
