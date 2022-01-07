
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_dw_hdmi {struct meson_drm* priv; } ;
struct meson_drm {int hhi; } ;
struct dw_hdmi {int dummy; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int HHI_HDMI_PHY_CNTL0 ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void dw_hdmi_phy_disable(struct dw_hdmi *hdmi,
    void *data)
{
 struct meson_dw_hdmi *dw_hdmi = (struct meson_dw_hdmi *)data;
 struct meson_drm *priv = dw_hdmi->priv;

 DRM_DEBUG_DRIVER("\n");

 regmap_write(priv->hhi, HHI_HDMI_PHY_CNTL0, 0);
}
