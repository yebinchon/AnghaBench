
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edma_chan {int vchan; } ;
struct dma_chan {int dummy; } ;


 struct edma_chan* to_edma_chan (struct dma_chan*) ;
 int vchan_synchronize (int *) ;

__attribute__((used)) static void edma_synchronize(struct dma_chan *chan)
{
 struct edma_chan *echan = to_edma_chan(chan);

 vchan_synchronize(&echan->vchan);
}
