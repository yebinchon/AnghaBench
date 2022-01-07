
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_dw_hdmi {struct meson_drm* priv; } ;
struct meson_drm {scalar_t__ io_base; } ;
struct drm_encoder {int dummy; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int ENCI_VIDEO_EN ;
 int ENCP_VIDEO_EN ;
 int VPU_HDMI_SETTING ;
 scalar_t__ _REG (int ) ;
 struct meson_dw_hdmi* encoder_to_meson_dw_hdmi (struct drm_encoder*) ;
 int writel_bits_relaxed (int,int ,scalar_t__) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void meson_venc_hdmi_encoder_disable(struct drm_encoder *encoder)
{
 struct meson_dw_hdmi *dw_hdmi = encoder_to_meson_dw_hdmi(encoder);
 struct meson_drm *priv = dw_hdmi->priv;

 DRM_DEBUG_DRIVER("\n");

 writel_bits_relaxed(0x3, 0,
       priv->io_base + _REG(VPU_HDMI_SETTING));

 writel_relaxed(0, priv->io_base + _REG(ENCI_VIDEO_EN));
 writel_relaxed(0, priv->io_base + _REG(ENCP_VIDEO_EN));
}
