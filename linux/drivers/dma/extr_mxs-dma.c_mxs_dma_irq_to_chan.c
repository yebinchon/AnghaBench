
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mxs_dma_engine {int nr_channels; TYPE_1__* mxs_chans; } ;
struct TYPE_2__ {int chan_irq; } ;


 int EINVAL ;

__attribute__((used)) static int mxs_dma_irq_to_chan(struct mxs_dma_engine *mxs_dma, int irq)
{
 int i;

 for (i = 0; i != mxs_dma->nr_channels; ++i)
  if (mxs_dma->mxs_chans[i].chan_irq == irq)
   return i;

 return -EINVAL;
}
