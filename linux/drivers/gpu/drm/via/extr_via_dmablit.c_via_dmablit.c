
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct drm_device {scalar_t__ dev_private; } ;
typedef int drm_via_sg_info_t ;
struct TYPE_10__ {TYPE_4__* blit_queues; } ;
typedef TYPE_2__ drm_via_private_t ;
struct TYPE_9__ {int engine; scalar_t__ sync_handle; } ;
struct TYPE_11__ {TYPE_1__ sync; scalar_t__ to_fb; } ;
typedef TYPE_3__ drm_via_dmablit_t ;
struct TYPE_12__ {scalar_t__ head; int blit_lock; scalar_t__ cur_blit_handle; int num_outstanding; int ** blits; } ;
typedef TYPE_4__ drm_via_blitq_t ;


 int DRM_ERROR (char*) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ VIA_NUM_BLIT_SLOTS ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int via_build_sg_info (struct drm_device*,int *,TYPE_3__*) ;
 int via_dmablit_grab_slot (TYPE_4__*,int) ;
 int via_dmablit_handler (struct drm_device*,int,int ) ;
 int via_dmablit_release_slot (TYPE_4__*) ;

__attribute__((used)) static int
via_dmablit(struct drm_device *dev, drm_via_dmablit_t *xfer)
{
 drm_via_private_t *dev_priv = (drm_via_private_t *)dev->dev_private;
 drm_via_sg_info_t *vsg;
 drm_via_blitq_t *blitq;
 int ret;
 int engine;
 unsigned long irqsave;

 if (dev_priv == ((void*)0)) {
  DRM_ERROR("Called without initialization.\n");
  return -EINVAL;
 }

 engine = (xfer->to_fb) ? 0 : 1;
 blitq = dev_priv->blit_queues + engine;
 if (0 != (ret = via_dmablit_grab_slot(blitq, engine)))
  return ret;
 if (((void*)0) == (vsg = kmalloc(sizeof(*vsg), GFP_KERNEL))) {
  via_dmablit_release_slot(blitq);
  return -ENOMEM;
 }
 if (0 != (ret = via_build_sg_info(dev, vsg, xfer))) {
  via_dmablit_release_slot(blitq);
  kfree(vsg);
  return ret;
 }
 spin_lock_irqsave(&blitq->blit_lock, irqsave);

 blitq->blits[blitq->head++] = vsg;
 if (blitq->head >= VIA_NUM_BLIT_SLOTS)
  blitq->head = 0;
 blitq->num_outstanding++;
 xfer->sync.sync_handle = ++blitq->cur_blit_handle;

 spin_unlock_irqrestore(&blitq->blit_lock, irqsave);
 xfer->sync.engine = engine;

 via_dmablit_handler(dev, engine, 0);

 return 0;
}
