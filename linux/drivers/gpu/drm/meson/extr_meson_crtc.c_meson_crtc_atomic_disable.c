
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int osd1_enabled; int osd1_commit; int vd1_enabled; int vd1_commit; } ;
struct meson_drm {scalar_t__ io_base; TYPE_1__ viu; } ;
struct meson_crtc {struct meson_drm* priv; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {TYPE_3__* state; TYPE_2__* dev; } ;
struct TYPE_6__ {int * event; int active; } ;
struct TYPE_5__ {int event_lock; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int VPP_MISC ;
 int VPP_OSD1_POSTBLEND ;
 int VPP_POSTBLEND_ENABLE ;
 int VPP_VD1_POSTBLEND ;
 int VPP_VD1_PREBLEND ;
 scalar_t__ _REG (int ) ;
 int drm_crtc_send_vblank_event (struct drm_crtc*,int *) ;
 int drm_crtc_vblank_off (struct drm_crtc*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 struct meson_crtc* to_meson_crtc (struct drm_crtc*) ;
 int writel_bits_relaxed (int,int ,scalar_t__) ;

__attribute__((used)) static void meson_crtc_atomic_disable(struct drm_crtc *crtc,
          struct drm_crtc_state *old_state)
{
 struct meson_crtc *meson_crtc = to_meson_crtc(crtc);
 struct meson_drm *priv = meson_crtc->priv;

 DRM_DEBUG_DRIVER("\n");

 drm_crtc_vblank_off(crtc);

 priv->viu.osd1_enabled = 0;
 priv->viu.osd1_commit = 0;

 priv->viu.vd1_enabled = 0;
 priv->viu.vd1_commit = 0;


 writel_bits_relaxed(VPP_OSD1_POSTBLEND | VPP_VD1_POSTBLEND |
       VPP_VD1_PREBLEND | VPP_POSTBLEND_ENABLE, 0,
       priv->io_base + _REG(VPP_MISC));

 if (crtc->state->event && !crtc->state->active) {
  spin_lock_irq(&crtc->dev->event_lock);
  drm_crtc_send_vblank_event(crtc, crtc->state->event);
  spin_unlock_irq(&crtc->dev->event_lock);

  crtc->state->event = ((void*)0);
 }
}
