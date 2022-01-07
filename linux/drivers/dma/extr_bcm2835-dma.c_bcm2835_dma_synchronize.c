
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_chan {int dummy; } ;
struct bcm2835_chan {int vc; } ;


 struct bcm2835_chan* to_bcm2835_dma_chan (struct dma_chan*) ;
 int vchan_synchronize (int *) ;

__attribute__((used)) static void bcm2835_dma_synchronize(struct dma_chan *chan)
{
 struct bcm2835_chan *c = to_bcm2835_dma_chan(chan);

 vchan_synchronize(&c->vc);
}
