
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_chan {int dummy; } ;
struct axi_dmac_chan {int vchan; } ;


 struct axi_dmac_chan* to_axi_dmac_chan (struct dma_chan*) ;
 int vchan_synchronize (int *) ;

__attribute__((used)) static void axi_dmac_synchronize(struct dma_chan *c)
{
 struct axi_dmac_chan *chan = to_axi_dmac_chan(c);

 vchan_synchronize(&chan->vchan);
}
