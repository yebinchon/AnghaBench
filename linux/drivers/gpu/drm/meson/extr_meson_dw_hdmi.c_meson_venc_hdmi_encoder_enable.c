
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct meson_dw_hdmi {struct meson_drm* priv; } ;
struct TYPE_2__ {scalar_t__ hdmi_use_enci; } ;
struct meson_drm {scalar_t__ io_base; TYPE_1__ venc; } ;
struct drm_encoder {int dummy; } ;


 int DRM_DEBUG_DRIVER (char*,char*) ;
 int ENCI_VIDEO_EN ;
 int ENCP_VIDEO_EN ;
 scalar_t__ _REG (int ) ;
 struct meson_dw_hdmi* encoder_to_meson_dw_hdmi (struct drm_encoder*) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void meson_venc_hdmi_encoder_enable(struct drm_encoder *encoder)
{
 struct meson_dw_hdmi *dw_hdmi = encoder_to_meson_dw_hdmi(encoder);
 struct meson_drm *priv = dw_hdmi->priv;

 DRM_DEBUG_DRIVER("%s\n", priv->venc.hdmi_use_enci ? "VENCI" : "VENCP");

 if (priv->venc.hdmi_use_enci)
  writel_relaxed(1, priv->io_base + _REG(ENCI_VIDEO_EN));
 else
  writel_relaxed(1, priv->io_base + _REG(ENCP_VIDEO_EN));
}
