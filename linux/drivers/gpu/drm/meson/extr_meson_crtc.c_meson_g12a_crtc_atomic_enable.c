
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct meson_drm {scalar_t__ io_base; } ;
struct meson_crtc {struct meson_drm* priv; } ;
struct TYPE_2__ {int hdisplay; int vdisplay; } ;
struct drm_crtc_state {TYPE_1__ mode; } ;
struct drm_crtc {struct drm_crtc_state* state; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int DRM_ERROR (char*) ;
 int FIELD_PREP (int ,int) ;
 int GENMASK (int,int ) ;
 int VPP_OSD1_BLD_H_SCOPE ;
 int VPP_OSD1_BLD_V_SCOPE ;
 int VPP_OUT_H_V_SIZE ;
 int VPP_POSTBLEND_H_SIZE ;
 int VPP_PREBLEND_VD1_V_START_END ;
 scalar_t__ _REG (int ) ;
 int drm_crtc_vblank_on (struct drm_crtc*) ;
 struct meson_crtc* to_meson_crtc (struct drm_crtc*) ;
 int writel (int,scalar_t__) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void meson_g12a_crtc_atomic_enable(struct drm_crtc *crtc,
       struct drm_crtc_state *old_state)
{
 struct meson_crtc *meson_crtc = to_meson_crtc(crtc);
 struct drm_crtc_state *crtc_state = crtc->state;
 struct meson_drm *priv = meson_crtc->priv;

 DRM_DEBUG_DRIVER("\n");

 if (!crtc_state) {
  DRM_ERROR("Invalid crtc_state\n");
  return;
 }


 writel(FIELD_PREP(GENMASK(11, 0), 2303),
        priv->io_base + _REG(VPP_PREBLEND_VD1_V_START_END));


 writel(crtc_state->mode.hdisplay |
        crtc_state->mode.vdisplay << 16,
        priv->io_base + _REG(VPP_POSTBLEND_H_SIZE));

 writel_relaxed(0 << 16 |
   (crtc_state->mode.hdisplay - 1),
   priv->io_base + _REG(VPP_OSD1_BLD_H_SCOPE));
 writel_relaxed(0 << 16 |
   (crtc_state->mode.vdisplay - 1),
   priv->io_base + _REG(VPP_OSD1_BLD_V_SCOPE));
 writel_relaxed(crtc_state->mode.hdisplay << 16 |
   crtc_state->mode.vdisplay,
   priv->io_base + _REG(VPP_OUT_H_V_SIZE));

 drm_crtc_vblank_on(crtc);
}
