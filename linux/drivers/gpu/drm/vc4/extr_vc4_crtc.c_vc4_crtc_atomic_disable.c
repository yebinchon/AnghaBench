
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vc4_dev {int dummy; } ;
struct vc4_crtc {int channel; } ;
struct drm_device {int event_lock; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_1__* state; struct drm_device* dev; } ;
struct TYPE_2__ {int * event; } ;


 int CRTC_READ (int ) ;
 int CRTC_WRITE (int ,int) ;
 int HVS_READ (int ) ;
 int HVS_WRITE (int ,int) ;
 int PV_VCONTROL_VIDEN ;
 int PV_V_CONTROL ;
 int SCALER_DISPCTRLX (int ) ;
 int SCALER_DISPCTRLX_ENABLE ;
 int SCALER_DISPCTRLX_RESET ;
 int SCALER_DISPSTATX (int ) ;
 int SCALER_DISPSTATX_EMPTY ;
 int SCALER_DISPSTATX_FULL ;
 int SCALER_DISPSTATX_MODE ;
 scalar_t__ SCALER_DISPSTATX_MODE_DISABLED ;
 scalar_t__ VC4_GET_FIELD (int,int ) ;
 int WARN_ONCE (int,char*) ;
 int WARN_ON_ONCE (int) ;
 int drm_crtc_send_vblank_event (struct drm_crtc*,int *) ;
 int drm_crtc_vblank_off (struct drm_crtc*) ;
 int require_hvs_enabled (struct drm_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct vc4_crtc* to_vc4_crtc (struct drm_crtc*) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;
 int wait_for (int,int) ;

__attribute__((used)) static void vc4_crtc_atomic_disable(struct drm_crtc *crtc,
        struct drm_crtc_state *old_state)
{
 struct drm_device *dev = crtc->dev;
 struct vc4_dev *vc4 = to_vc4_dev(dev);
 struct vc4_crtc *vc4_crtc = to_vc4_crtc(crtc);
 u32 chan = vc4_crtc->channel;
 int ret;
 require_hvs_enabled(dev);


 drm_crtc_vblank_off(crtc);

 CRTC_WRITE(PV_V_CONTROL,
     CRTC_READ(PV_V_CONTROL) & ~PV_VCONTROL_VIDEN);
 ret = wait_for(!(CRTC_READ(PV_V_CONTROL) & PV_VCONTROL_VIDEN), 1);
 WARN_ONCE(ret, "Timeout waiting for !PV_VCONTROL_VIDEN\n");

 if (HVS_READ(SCALER_DISPCTRLX(chan)) &
     SCALER_DISPCTRLX_ENABLE) {
  HVS_WRITE(SCALER_DISPCTRLX(chan),
     SCALER_DISPCTRLX_RESET);




  HVS_WRITE(SCALER_DISPCTRLX(chan), 0);
 }



 WARN_ON_ONCE(HVS_READ(SCALER_DISPCTRLX(chan)) & SCALER_DISPCTRLX_RESET);

 WARN_ON_ONCE(VC4_GET_FIELD(HVS_READ(SCALER_DISPSTATX(chan)),
       SCALER_DISPSTATX_MODE) !=
       SCALER_DISPSTATX_MODE_DISABLED);

 WARN_ON_ONCE((HVS_READ(SCALER_DISPSTATX(chan)) &
        (SCALER_DISPSTATX_FULL | SCALER_DISPSTATX_EMPTY)) !=
       SCALER_DISPSTATX_EMPTY);





 if (crtc->state->event) {
  unsigned long flags;

  spin_lock_irqsave(&dev->event_lock, flags);
  drm_crtc_send_vblank_event(crtc, crtc->state->event);
  crtc->state->event = ((void*)0);
  spin_unlock_irqrestore(&dev->event_lock, flags);
 }
}
