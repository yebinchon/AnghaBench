
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv04_page_flip_state {int head; } ;
struct nouveau_fence_chan {int flip; } ;
struct nouveau_fence {int dummy; } ;
struct nouveau_drm {struct drm_device* dev; } ;
struct nouveau_channel {struct nouveau_drm* drm; struct nouveau_fence_chan* fence; } ;
struct nouveau_bo {int dummy; } ;
struct drm_device {int event_lock; } ;


 int BEGIN_NV04 (struct nouveau_channel*,int ,int ,int) ;
 int FIRE_RING (struct nouveau_channel*) ;
 int NV_SW_PAGE_FLIP ;
 int NvSubSw ;
 int OUT_RING (struct nouveau_channel*,int) ;
 int RING_SPACE (struct nouveau_channel*,int) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int nouveau_fence_new (struct nouveau_channel*,int,struct nouveau_fence**) ;
 int nouveau_fence_sync (struct nouveau_bo*,struct nouveau_channel*,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
nv04_page_flip_emit(struct nouveau_channel *chan,
      struct nouveau_bo *old_bo,
      struct nouveau_bo *new_bo,
      struct nv04_page_flip_state *s,
      struct nouveau_fence **pfence)
{
 struct nouveau_fence_chan *fctx = chan->fence;
 struct nouveau_drm *drm = chan->drm;
 struct drm_device *dev = drm->dev;
 unsigned long flags;
 int ret;


 spin_lock_irqsave(&dev->event_lock, flags);
 list_add_tail(&s->head, &fctx->flip);
 spin_unlock_irqrestore(&dev->event_lock, flags);


 ret = nouveau_fence_sync(old_bo, chan, 0, 0);
 if (ret)
  goto fail;


 ret = RING_SPACE(chan, 2);
 if (ret)
  goto fail;

 BEGIN_NV04(chan, NvSubSw, NV_SW_PAGE_FLIP, 1);
 OUT_RING (chan, 0x00000000);
 FIRE_RING (chan);

 ret = nouveau_fence_new(chan, 0, pfence);
 if (ret)
  goto fail;

 return 0;
fail:
 spin_lock_irqsave(&dev->event_lock, flags);
 list_del(&s->head);
 spin_unlock_irqrestore(&dev->event_lock, flags);
 return ret;
}
