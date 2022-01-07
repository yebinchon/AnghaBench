
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tilcdc_crtc {int enable_lock; int irq_lock; struct drm_framebuffer* next_fb; int hvtotal_us; int last_vblank; scalar_t__ enabled; struct drm_pending_vblank_event* event; } ;
struct drm_pending_vblank_event {int dummy; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_device {int dev; } ;
struct drm_crtc {struct drm_device* dev; } ;
typedef scalar_t__ s64 ;
typedef int ktime_t ;


 int EBUSY ;
 scalar_t__ TILCDC_VBLANK_SAFETY_THRESHOLD_US ;
 int dev_err (int ,char*) ;
 int ktime_add_us (int ,int ) ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 scalar_t__ ktime_to_us (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_scanout (struct drm_crtc*,struct drm_framebuffer*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct tilcdc_crtc* to_tilcdc_crtc (struct drm_crtc*) ;

int tilcdc_crtc_update_fb(struct drm_crtc *crtc,
  struct drm_framebuffer *fb,
  struct drm_pending_vblank_event *event)
{
 struct tilcdc_crtc *tilcdc_crtc = to_tilcdc_crtc(crtc);
 struct drm_device *dev = crtc->dev;

 if (tilcdc_crtc->event) {
  dev_err(dev->dev, "already pending page flip!\n");
  return -EBUSY;
 }

 tilcdc_crtc->event = event;

 mutex_lock(&tilcdc_crtc->enable_lock);

 if (tilcdc_crtc->enabled) {
  unsigned long flags;
  ktime_t next_vblank;
  s64 tdiff;

  spin_lock_irqsave(&tilcdc_crtc->irq_lock, flags);

  next_vblank = ktime_add_us(tilcdc_crtc->last_vblank,
        tilcdc_crtc->hvtotal_us);
  tdiff = ktime_to_us(ktime_sub(next_vblank, ktime_get()));

  if (tdiff < TILCDC_VBLANK_SAFETY_THRESHOLD_US)
   tilcdc_crtc->next_fb = fb;
  else
   set_scanout(crtc, fb);

  spin_unlock_irqrestore(&tilcdc_crtc->irq_lock, flags);
 }

 mutex_unlock(&tilcdc_crtc->enable_lock);

 return 0;
}
