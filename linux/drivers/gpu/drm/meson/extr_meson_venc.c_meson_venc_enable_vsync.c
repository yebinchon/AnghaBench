
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_drm {int hhi; scalar_t__ io_base; } ;


 int BIT (int) ;
 int HHI_GCLK_MPEG2 ;
 int VENC_INTCTRL ;
 int VENC_INTCTRL_ENCI_LNRST_INT_EN ;
 scalar_t__ _REG (int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int writel_relaxed (int ,scalar_t__) ;

void meson_venc_enable_vsync(struct meson_drm *priv)
{
 writel_relaxed(VENC_INTCTRL_ENCI_LNRST_INT_EN,
         priv->io_base + _REG(VENC_INTCTRL));
 regmap_update_bits(priv->hhi, HHI_GCLK_MPEG2, BIT(25), BIT(25));
}
