
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vc4_dev {int dummy; } ;
struct TYPE_5__ {int start; } ;
struct vc4_crtc_state {TYPE_2__ mm; scalar_t__ txp_armed; int feed_txp; } ;
struct vc4_crtc {int channel; TYPE_1__* event; } ;
struct drm_device {int event_lock; } ;
struct drm_crtc {TYPE_3__* state; struct drm_device* dev; } ;
struct TYPE_6__ {TYPE_1__* event; } ;
struct TYPE_4__ {int pipe; } ;


 int HVS_WRITE (int ,int ) ;
 int SCALER_DISPLISTX (int ) ;
 int WARN_ON (int) ;
 int drm_crtc_index (struct drm_crtc*) ;
 scalar_t__ drm_crtc_vblank_get (struct drm_crtc*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct vc4_crtc* to_vc4_crtc (struct drm_crtc*) ;
 struct vc4_crtc_state* to_vc4_crtc_state (TYPE_3__*) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;

__attribute__((used)) static void vc4_crtc_update_dlist(struct drm_crtc *crtc)
{
 struct drm_device *dev = crtc->dev;
 struct vc4_dev *vc4 = to_vc4_dev(dev);
 struct vc4_crtc *vc4_crtc = to_vc4_crtc(crtc);
 struct vc4_crtc_state *vc4_state = to_vc4_crtc_state(crtc->state);

 if (crtc->state->event) {
  unsigned long flags;

  crtc->state->event->pipe = drm_crtc_index(crtc);

  WARN_ON(drm_crtc_vblank_get(crtc) != 0);

  spin_lock_irqsave(&dev->event_lock, flags);

  if (!vc4_state->feed_txp || vc4_state->txp_armed) {
   vc4_crtc->event = crtc->state->event;
   crtc->state->event = ((void*)0);
  }

  HVS_WRITE(SCALER_DISPLISTX(vc4_crtc->channel),
     vc4_state->mm.start);

  spin_unlock_irqrestore(&dev->event_lock, flags);
 } else {
  HVS_WRITE(SCALER_DISPLISTX(vc4_crtc->channel),
     vc4_state->mm.start);
 }
}
