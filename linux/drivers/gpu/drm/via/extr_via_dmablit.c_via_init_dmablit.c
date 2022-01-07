
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_device {int pdev; scalar_t__ dev_private; } ;
struct TYPE_3__ {TYPE_2__* blit_queues; } ;
typedef TYPE_1__ drm_via_private_t ;
struct TYPE_4__ {int num_free; int poll_timer; int wq; int busy_queue; int * blit_queue; int blit_lock; scalar_t__ aborting; scalar_t__ is_active; scalar_t__ num_outstanding; scalar_t__ serviced; scalar_t__ cur; scalar_t__ head; scalar_t__ done_blit_handle; scalar_t__ cur_blit_handle; struct drm_device* dev; } ;
typedef TYPE_2__ drm_via_blitq_t ;


 int INIT_WORK (int *,int ) ;
 int VIA_NUM_BLIT_ENGINES ;
 int VIA_NUM_BLIT_SLOTS ;
 int init_waitqueue_head (int *) ;
 int pci_set_master (int ) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;
 int via_dmablit_timer ;
 int via_dmablit_workqueue ;

void
via_init_dmablit(struct drm_device *dev)
{
 int i, j;
 drm_via_private_t *dev_priv = (drm_via_private_t *)dev->dev_private;
 drm_via_blitq_t *blitq;

 pci_set_master(dev->pdev);

 for (i = 0; i < VIA_NUM_BLIT_ENGINES; ++i) {
  blitq = dev_priv->blit_queues + i;
  blitq->dev = dev;
  blitq->cur_blit_handle = 0;
  blitq->done_blit_handle = 0;
  blitq->head = 0;
  blitq->cur = 0;
  blitq->serviced = 0;
  blitq->num_free = VIA_NUM_BLIT_SLOTS - 1;
  blitq->num_outstanding = 0;
  blitq->is_active = 0;
  blitq->aborting = 0;
  spin_lock_init(&blitq->blit_lock);
  for (j = 0; j < VIA_NUM_BLIT_SLOTS; ++j)
   init_waitqueue_head(blitq->blit_queue + j);
  init_waitqueue_head(&blitq->busy_queue);
  INIT_WORK(&blitq->wq, via_dmablit_workqueue);
  timer_setup(&blitq->poll_timer, via_dmablit_timer, 0);
 }
}
