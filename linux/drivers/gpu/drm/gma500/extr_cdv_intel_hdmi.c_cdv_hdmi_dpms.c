
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mid_intel_hdmi_priv {int hdmi_reg; } ;
struct gma_encoder {struct mid_intel_hdmi_priv* dev_priv; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {int dummy; } ;


 int DRM_MODE_DPMS_ON ;
 int HDMIB_PORT_EN ;
 int REG_READ (int ) ;
 int REG_WRITE (int ,int) ;
 struct gma_encoder* to_gma_encoder (struct drm_encoder*) ;

__attribute__((used)) static void cdv_hdmi_dpms(struct drm_encoder *encoder, int mode)
{
 struct drm_device *dev = encoder->dev;
 struct gma_encoder *gma_encoder = to_gma_encoder(encoder);
 struct mid_intel_hdmi_priv *hdmi_priv = gma_encoder->dev_priv;
 u32 hdmib;

 hdmib = REG_READ(hdmi_priv->hdmi_reg);

 if (mode != DRM_MODE_DPMS_ON)
  REG_WRITE(hdmi_priv->hdmi_reg, hdmib & ~HDMIB_PORT_EN);
 else
  REG_WRITE(hdmi_priv->hdmi_reg, hdmib | HDMIB_PORT_EN);
 REG_READ(hdmi_priv->hdmi_reg);
}
