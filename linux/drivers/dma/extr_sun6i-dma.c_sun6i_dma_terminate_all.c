
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virt_dma_desc {int node; } ;
struct virt_dma_chan {int lock; int desc_completed; } ;
struct sun6i_vchan {int cyclic; struct virt_dma_chan vc; struct sun6i_pchan* phy; int node; } ;
struct sun6i_pchan {int * done; TYPE_1__* desc; int * vchan; scalar_t__ base; } ;
struct sun6i_dma_dev {int lock; } ;
struct dma_chan {int device; } ;
struct TYPE_2__ {struct virt_dma_desc vd; } ;


 scalar_t__ DMA_CHAN_ENABLE ;
 int DMA_CHAN_ENABLE_STOP ;
 scalar_t__ DMA_CHAN_PAUSE ;
 int DMA_CHAN_PAUSE_RESUME ;
 int LIST_HEAD (int ) ;
 int head ;
 int list_add_tail (int *,int *) ;
 int list_del_init (int *) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct sun6i_dma_dev* to_sun6i_dma_dev (int ) ;
 struct sun6i_vchan* to_sun6i_vchan (struct dma_chan*) ;
 int vchan_dma_desc_free_list (struct virt_dma_chan*,int *) ;
 int vchan_get_all_descriptors (struct virt_dma_chan*,int *) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int sun6i_dma_terminate_all(struct dma_chan *chan)
{
 struct sun6i_dma_dev *sdev = to_sun6i_dma_dev(chan->device);
 struct sun6i_vchan *vchan = to_sun6i_vchan(chan);
 struct sun6i_pchan *pchan = vchan->phy;
 unsigned long flags;
 LIST_HEAD(head);

 spin_lock(&sdev->lock);
 list_del_init(&vchan->node);
 spin_unlock(&sdev->lock);

 spin_lock_irqsave(&vchan->vc.lock, flags);

 if (vchan->cyclic) {
  vchan->cyclic = 0;
  if (pchan && pchan->desc) {
   struct virt_dma_desc *vd = &pchan->desc->vd;
   struct virt_dma_chan *vc = &vchan->vc;

   list_add_tail(&vd->node, &vc->desc_completed);
  }
 }

 vchan_get_all_descriptors(&vchan->vc, &head);

 if (pchan) {
  writel(DMA_CHAN_ENABLE_STOP, pchan->base + DMA_CHAN_ENABLE);
  writel(DMA_CHAN_PAUSE_RESUME, pchan->base + DMA_CHAN_PAUSE);

  vchan->phy = ((void*)0);
  pchan->vchan = ((void*)0);
  pchan->desc = ((void*)0);
  pchan->done = ((void*)0);
 }

 spin_unlock_irqrestore(&vchan->vc.lock, flags);

 vchan_dma_desc_free_list(&vchan->vc, &head);

 return 0;
}
