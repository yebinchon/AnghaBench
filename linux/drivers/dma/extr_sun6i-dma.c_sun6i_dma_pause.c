
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun6i_vchan {int node; int vc; struct sun6i_pchan* phy; } ;
struct sun6i_pchan {scalar_t__ base; } ;
struct sun6i_dma_dev {int lock; } ;
struct dma_chan {int device; } ;


 scalar_t__ DMA_CHAN_PAUSE ;
 int DMA_CHAN_PAUSE_PAUSE ;
 int chan2dev (struct dma_chan*) ;
 int dev_dbg (int ,char*,int *) ;
 int list_del_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct sun6i_dma_dev* to_sun6i_dma_dev (int ) ;
 struct sun6i_vchan* to_sun6i_vchan (struct dma_chan*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int sun6i_dma_pause(struct dma_chan *chan)
{
 struct sun6i_dma_dev *sdev = to_sun6i_dma_dev(chan->device);
 struct sun6i_vchan *vchan = to_sun6i_vchan(chan);
 struct sun6i_pchan *pchan = vchan->phy;

 dev_dbg(chan2dev(chan), "vchan %p: pause\n", &vchan->vc);

 if (pchan) {
  writel(DMA_CHAN_PAUSE_PAUSE,
         pchan->base + DMA_CHAN_PAUSE);
 } else {
  spin_lock(&sdev->lock);
  list_del_init(&vchan->node);
  spin_unlock(&sdev->lock);
 }

 return 0;
}
