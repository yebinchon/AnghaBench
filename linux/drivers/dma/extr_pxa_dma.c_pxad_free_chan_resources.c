
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxad_chan {int prio; int drcmr; int * desc_pool; int vc; } ;
struct dma_chan {int dummy; } ;


 int PXAD_PRIO_LOWEST ;
 int U32_MAX ;
 int dma_pool_destroy (int *) ;
 struct pxad_chan* to_pxad_chan (struct dma_chan*) ;
 int vchan_free_chan_resources (int *) ;

__attribute__((used)) static void pxad_free_chan_resources(struct dma_chan *dchan)
{
 struct pxad_chan *chan = to_pxad_chan(dchan);

 vchan_free_chan_resources(&chan->vc);
 dma_pool_destroy(chan->desc_pool);
 chan->desc_pool = ((void*)0);

 chan->drcmr = U32_MAX;
 chan->prio = PXAD_PRIO_LOWEST;
}
