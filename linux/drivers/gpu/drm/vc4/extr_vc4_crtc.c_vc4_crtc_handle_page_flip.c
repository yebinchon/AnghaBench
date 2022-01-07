
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vc4_dev {int dummy; } ;
struct TYPE_2__ {scalar_t__ start; } ;
struct vc4_crtc_state {scalar_t__ feed_txp; TYPE_1__ mm; } ;
struct drm_crtc {int state; struct drm_device* dev; } ;
struct vc4_crtc {int channel; int * event; struct drm_crtc base; } ;
struct drm_device {int event_lock; } ;


 scalar_t__ HVS_READ (int ) ;
 int SCALER_DISPLACTX (int ) ;
 int drm_crtc_send_vblank_event (struct drm_crtc*,int *) ;
 int drm_crtc_vblank_put (struct drm_crtc*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct vc4_crtc_state* to_vc4_crtc_state (int ) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;
 int vc4_hvs_unmask_underrun (struct drm_device*,int ) ;

__attribute__((used)) static void vc4_crtc_handle_page_flip(struct vc4_crtc *vc4_crtc)
{
 struct drm_crtc *crtc = &vc4_crtc->base;
 struct drm_device *dev = crtc->dev;
 struct vc4_dev *vc4 = to_vc4_dev(dev);
 struct vc4_crtc_state *vc4_state = to_vc4_crtc_state(crtc->state);
 u32 chan = vc4_crtc->channel;
 unsigned long flags;

 spin_lock_irqsave(&dev->event_lock, flags);
 if (vc4_crtc->event &&
     (vc4_state->mm.start == HVS_READ(SCALER_DISPLACTX(chan)) ||
      vc4_state->feed_txp)) {
  drm_crtc_send_vblank_event(crtc, vc4_crtc->event);
  vc4_crtc->event = ((void*)0);
  drm_crtc_vblank_put(crtc);







  vc4_hvs_unmask_underrun(dev, vc4_crtc->channel);
 }
 spin_unlock_irqrestore(&dev->event_lock, flags);
}
