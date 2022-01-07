
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pl08x_dma_chan {int vc; } ;
struct dma_chan {int dummy; } ;


 struct pl08x_dma_chan* to_pl08x_chan (struct dma_chan*) ;
 int vchan_synchronize (int *) ;

__attribute__((used)) static void pl08x_synchronize(struct dma_chan *chan)
{
 struct pl08x_dma_chan *plchan = to_pl08x_chan(chan);

 vchan_synchronize(&plchan->vc);
}
