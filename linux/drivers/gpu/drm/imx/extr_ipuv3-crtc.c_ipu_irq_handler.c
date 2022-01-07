
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipu_plane {int base; } ;
struct drm_crtc {TYPE_1__* dev; } ;
struct ipu_crtc {int * event; struct ipu_plane** plane; struct drm_crtc base; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int event_lock; } ;


 int ARRAY_SIZE (struct ipu_plane**) ;
 int IRQ_HANDLED ;
 int drm_crtc_handle_vblank (struct drm_crtc*) ;
 int drm_crtc_send_vblank_event (struct drm_crtc*,int *) ;
 int drm_crtc_vblank_put (struct drm_crtc*) ;
 scalar_t__ ipu_plane_atomic_update_pending (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t ipu_irq_handler(int irq, void *dev_id)
{
 struct ipu_crtc *ipu_crtc = dev_id;
 struct drm_crtc *crtc = &ipu_crtc->base;
 unsigned long flags;
 int i;

 drm_crtc_handle_vblank(crtc);

 if (ipu_crtc->event) {
  for (i = 0; i < ARRAY_SIZE(ipu_crtc->plane); i++) {
   struct ipu_plane *plane = ipu_crtc->plane[i];

   if (!plane)
    continue;

   if (ipu_plane_atomic_update_pending(&plane->base))
    break;
  }

  if (i == ARRAY_SIZE(ipu_crtc->plane)) {
   spin_lock_irqsave(&crtc->dev->event_lock, flags);
   drm_crtc_send_vblank_event(crtc, ipu_crtc->event);
   ipu_crtc->event = ((void*)0);
   drm_crtc_vblank_put(crtc);
   spin_unlock_irqrestore(&crtc->dev->event_lock, flags);
  }
 }

 return IRQ_HANDLED;
}
