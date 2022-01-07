
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct k3_dma_chan {int vc; } ;
struct dma_chan {int dummy; } ;


 struct k3_dma_chan* to_k3_chan (struct dma_chan*) ;
 int vchan_synchronize (int *) ;

__attribute__((used)) static void k3_dma_synchronize(struct dma_chan *chan)
{
 struct k3_dma_chan *c = to_k3_chan(chan);

 vchan_synchronize(&c->vc);
}
