
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_dw_hdmi {struct meson_drm* priv; } ;
struct meson_drm {scalar_t__ io_base; } ;
struct drm_encoder {int dummy; } ;
struct drm_display_mode {int name; } ;


 int DRM_DEBUG_DRIVER (char*,int ,int) ;
 int VPU_HDMI_FMT_CTRL ;
 scalar_t__ _REG (int ) ;
 int drm_match_cea_mode (struct drm_display_mode*) ;
 int dw_hdmi_set_vclk (struct meson_dw_hdmi*,struct drm_display_mode*) ;
 struct meson_dw_hdmi* encoder_to_meson_dw_hdmi (struct drm_encoder*) ;
 int meson_venc_hdmi_mode_set (struct meson_drm*,int,struct drm_display_mode*) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void meson_venc_hdmi_encoder_mode_set(struct drm_encoder *encoder,
       struct drm_display_mode *mode,
       struct drm_display_mode *adjusted_mode)
{
 struct meson_dw_hdmi *dw_hdmi = encoder_to_meson_dw_hdmi(encoder);
 struct meson_drm *priv = dw_hdmi->priv;
 int vic = drm_match_cea_mode(mode);

 DRM_DEBUG_DRIVER("\"%s\" vic %d\n", mode->name, vic);


 meson_venc_hdmi_mode_set(priv, vic, mode);


 dw_hdmi_set_vclk(dw_hdmi, mode);


 writel_relaxed(0, priv->io_base + _REG(VPU_HDMI_FMT_CTRL));
}
