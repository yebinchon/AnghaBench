
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmp_pdma_chan {int dummy; } ;
struct dma_tx_state {int dummy; } ;
struct dma_chan {int dummy; } ;
typedef enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef int dma_cookie_t ;


 int DMA_ERROR ;
 int dma_cookie_status (struct dma_chan*,int ,struct dma_tx_state*) ;
 int dma_set_residue (struct dma_tx_state*,int ) ;
 scalar_t__ likely (int) ;
 int mmp_pdma_residue (struct mmp_pdma_chan*,int ) ;
 struct mmp_pdma_chan* to_mmp_pdma_chan (struct dma_chan*) ;

__attribute__((used)) static enum dma_status mmp_pdma_tx_status(struct dma_chan *dchan,
       dma_cookie_t cookie,
       struct dma_tx_state *txstate)
{
 struct mmp_pdma_chan *chan = to_mmp_pdma_chan(dchan);
 enum dma_status ret;

 ret = dma_cookie_status(dchan, cookie, txstate);
 if (likely(ret != DMA_ERROR))
  dma_set_residue(txstate, mmp_pdma_residue(chan, cookie));

 return ret;
}
