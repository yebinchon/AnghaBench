
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_drm {scalar_t__ io_base; int hhi; } ;


 int BIT (int) ;
 int HHI_GCLK_MPEG2 ;
 int VENC_INTCTRL ;
 scalar_t__ _REG (int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int writel_relaxed (int ,scalar_t__) ;

void meson_venc_disable_vsync(struct meson_drm *priv)
{
 regmap_update_bits(priv->hhi, HHI_GCLK_MPEG2, BIT(25), 0);
 writel_relaxed(0, priv->io_base + _REG(VENC_INTCTRL));
}
