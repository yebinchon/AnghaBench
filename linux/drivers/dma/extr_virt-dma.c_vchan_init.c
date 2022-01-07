
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int device_node; struct dma_device* device; } ;
struct virt_dma_chan {TYPE_1__ chan; int task; int desc_completed; int desc_issued; int desc_submitted; int desc_allocated; int lock; } ;
struct dma_device {int channels; } ;


 int INIT_LIST_HEAD (int *) ;
 int dma_cookie_init (TYPE_1__*) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int vchan_complete ;

void vchan_init(struct virt_dma_chan *vc, struct dma_device *dmadev)
{
 dma_cookie_init(&vc->chan);

 spin_lock_init(&vc->lock);
 INIT_LIST_HEAD(&vc->desc_allocated);
 INIT_LIST_HEAD(&vc->desc_submitted);
 INIT_LIST_HEAD(&vc->desc_issued);
 INIT_LIST_HEAD(&vc->desc_completed);

 tasklet_init(&vc->task, vchan_complete, (unsigned long)vc);

 vc->chan.device = dmadev;
 list_add_tail(&vc->chan.device_node, &dmadev->channels);
}
