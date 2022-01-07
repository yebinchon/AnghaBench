
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_drm {scalar_t__ io_base; } ;


 int VPP_MISC ;
 int VPP_OSD1_POSTBLEND ;
 scalar_t__ _REG (int ) ;
 int writel_bits_relaxed (int ,int ,scalar_t__) ;

__attribute__((used)) static void meson_crtc_enable_osd1(struct meson_drm *priv)
{
 writel_bits_relaxed(VPP_OSD1_POSTBLEND, VPP_OSD1_POSTBLEND,
       priv->io_base + _REG(VPP_MISC));
}
