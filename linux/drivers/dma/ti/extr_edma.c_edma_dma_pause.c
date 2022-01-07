
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edma_chan {int edesc; } ;
struct dma_chan {int dummy; } ;


 int EINVAL ;
 int edma_pause (struct edma_chan*) ;
 struct edma_chan* to_edma_chan (struct dma_chan*) ;

__attribute__((used)) static int edma_dma_pause(struct dma_chan *chan)
{
 struct edma_chan *echan = to_edma_chan(chan);

 if (!echan->edesc)
  return -EINVAL;

 edma_pause(echan);
 return 0;
}
