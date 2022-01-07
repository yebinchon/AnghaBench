
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jz4780_dma_chan {int * desc_pool; int vchan; } ;
struct dma_chan {int dummy; } ;


 int dma_pool_destroy (int *) ;
 struct jz4780_dma_chan* to_jz4780_dma_chan (struct dma_chan*) ;
 int vchan_free_chan_resources (int *) ;

__attribute__((used)) static void jz4780_dma_free_chan_resources(struct dma_chan *chan)
{
 struct jz4780_dma_chan *jzchan = to_jz4780_dma_chan(chan);

 vchan_free_chan_resources(&jzchan->vchan);
 dma_pool_destroy(jzchan->desc_pool);
 jzchan->desc_pool = ((void*)0);
}
