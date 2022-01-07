
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct udl_framebuffer {int active_16; } ;
struct drm_pending_vblank_event {int dummy; } ;
struct drm_modeset_acquire_ctx {int dummy; } ;
struct drm_framebuffer {int height; int width; } ;
struct drm_device {int event_lock; } ;
struct drm_crtc {TYPE_1__* primary; struct drm_device* dev; } ;
struct TYPE_2__ {struct drm_framebuffer* fb; } ;


 int drm_crtc_send_vblank_event (struct drm_crtc*,struct drm_pending_vblank_event*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 struct udl_framebuffer* to_udl_fb (struct drm_framebuffer*) ;
 int udl_handle_damage (struct udl_framebuffer*,int ,int ,int ,int ) ;

__attribute__((used)) static int udl_crtc_page_flip(struct drm_crtc *crtc,
         struct drm_framebuffer *fb,
         struct drm_pending_vblank_event *event,
         uint32_t page_flip_flags,
         struct drm_modeset_acquire_ctx *ctx)
{
 struct udl_framebuffer *ufb = to_udl_fb(fb);
 struct drm_device *dev = crtc->dev;

 struct drm_framebuffer *old_fb = crtc->primary->fb;
 if (old_fb) {
  struct udl_framebuffer *uold_fb = to_udl_fb(old_fb);
  uold_fb->active_16 = 0;
 }
 ufb->active_16 = 1;

 udl_handle_damage(ufb, 0, 0, fb->width, fb->height);

 spin_lock_irq(&dev->event_lock);
 if (event)
  drm_crtc_send_vblank_event(crtc, event);
 spin_unlock_irq(&dev->event_lock);
 crtc->primary->fb = fb;

 return 0;
}
