
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_dw_hdmi {struct meson_drm* priv; } ;
struct meson_drm {int hhi; } ;


 int HHI_HDMI_PHY_CNTL1 ;
 int mdelay (int) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static inline void meson_dw_hdmi_phy_reset(struct meson_dw_hdmi *dw_hdmi)
{
 struct meson_drm *priv = dw_hdmi->priv;


 regmap_update_bits(priv->hhi, HHI_HDMI_PHY_CNTL1, 0xf, 0xf);

 mdelay(2);


 regmap_update_bits(priv->hhi, HHI_HDMI_PHY_CNTL1, 0xf, 0xe);

 mdelay(2);
}
