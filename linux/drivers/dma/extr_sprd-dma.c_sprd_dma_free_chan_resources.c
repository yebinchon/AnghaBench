
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct virt_dma_desc {int dummy; } ;
struct TYPE_6__ {int lock; } ;
struct sprd_dma_chn {TYPE_3__ vc; TYPE_2__* cur_desc; } ;
struct dma_chan {TYPE_1__* device; } ;
struct TYPE_5__ {struct virt_dma_desc vd; } ;
struct TYPE_4__ {int dev; } ;


 int pm_runtime_put (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sprd_dma_free_desc (struct virt_dma_desc*) ;
 int sprd_dma_stop (struct sprd_dma_chn*) ;
 struct sprd_dma_chn* to_sprd_dma_chan (struct dma_chan*) ;
 int vchan_free_chan_resources (TYPE_3__*) ;

__attribute__((used)) static void sprd_dma_free_chan_resources(struct dma_chan *chan)
{
 struct sprd_dma_chn *schan = to_sprd_dma_chan(chan);
 struct virt_dma_desc *cur_vd = ((void*)0);
 unsigned long flags;

 spin_lock_irqsave(&schan->vc.lock, flags);
 if (schan->cur_desc)
  cur_vd = &schan->cur_desc->vd;

 sprd_dma_stop(schan);
 spin_unlock_irqrestore(&schan->vc.lock, flags);

 if (cur_vd)
  sprd_dma_free_desc(cur_vd);

 vchan_free_chan_resources(&schan->vc);
 pm_runtime_put(chan->device->dev);
}
