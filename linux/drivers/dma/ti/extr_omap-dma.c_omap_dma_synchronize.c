
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_chan {int vc; } ;
struct dma_chan {int dummy; } ;


 struct omap_chan* to_omap_dma_chan (struct dma_chan*) ;
 int vchan_synchronize (int *) ;

__attribute__((used)) static void omap_dma_synchronize(struct dma_chan *chan)
{
 struct omap_chan *c = to_omap_dma_chan(chan);

 vchan_synchronize(&c->vc);
}
