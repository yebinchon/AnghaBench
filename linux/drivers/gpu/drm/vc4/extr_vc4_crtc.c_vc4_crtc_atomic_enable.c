
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc4_dev {int dummy; } ;
struct vc4_crtc_state {scalar_t__ feed_txp; } ;
struct vc4_crtc {int channel; } ;
struct drm_display_mode {int vdisplay; int hdisplay; } ;
struct drm_device {int dummy; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_1__* state; struct drm_device* dev; } ;
struct TYPE_2__ {struct drm_display_mode adjusted_mode; } ;


 int CRTC_READ (int ) ;
 int CRTC_WRITE (int ,int) ;
 int HVS_WRITE (int ,int) ;
 int PV_VCONTROL_VIDEN ;
 int PV_V_CONTROL ;
 int SCALER_DISPCTRLX (int ) ;
 int SCALER_DISPCTRLX_ENABLE ;
 int SCALER_DISPCTRLX_HEIGHT ;
 int SCALER_DISPCTRLX_ONESHOT ;
 int SCALER_DISPCTRLX_WIDTH ;
 int VC4_SET_FIELD (int ,int ) ;
 int drm_crtc_vblank_on (struct drm_crtc*) ;
 int require_hvs_enabled (struct drm_device*) ;
 struct vc4_crtc* to_vc4_crtc (struct drm_crtc*) ;
 struct vc4_crtc_state* to_vc4_crtc_state (TYPE_1__*) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;
 int vc4_crtc_update_dlist (struct drm_crtc*) ;

__attribute__((used)) static void vc4_crtc_atomic_enable(struct drm_crtc *crtc,
       struct drm_crtc_state *old_state)
{
 struct drm_device *dev = crtc->dev;
 struct vc4_dev *vc4 = to_vc4_dev(dev);
 struct vc4_crtc *vc4_crtc = to_vc4_crtc(crtc);
 struct vc4_crtc_state *vc4_state = to_vc4_crtc_state(crtc->state);
 struct drm_display_mode *mode = &crtc->state->adjusted_mode;

 require_hvs_enabled(dev);




 drm_crtc_vblank_on(crtc);
 vc4_crtc_update_dlist(crtc);






 HVS_WRITE(SCALER_DISPCTRLX(vc4_crtc->channel),
    VC4_SET_FIELD(mode->hdisplay, SCALER_DISPCTRLX_WIDTH) |
    VC4_SET_FIELD(mode->vdisplay, SCALER_DISPCTRLX_HEIGHT) |
    SCALER_DISPCTRLX_ENABLE |
    (vc4_state->feed_txp ? SCALER_DISPCTRLX_ONESHOT : 0));




 if (!vc4_state->feed_txp)
  CRTC_WRITE(PV_V_CONTROL,
      CRTC_READ(PV_V_CONTROL) | PV_VCONTROL_VIDEN);
}
