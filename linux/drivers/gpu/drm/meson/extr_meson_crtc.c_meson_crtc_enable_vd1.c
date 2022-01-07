
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_drm {scalar_t__ io_base; } ;


 int VPP_COLOR_MNG_ENABLE ;
 int VPP_MISC ;
 int VPP_VD1_POSTBLEND ;
 int VPP_VD1_PREBLEND ;
 scalar_t__ _REG (int ) ;
 int writel_bits_relaxed (int,int,scalar_t__) ;

__attribute__((used)) static void meson_crtc_enable_vd1(struct meson_drm *priv)
{
 writel_bits_relaxed(VPP_VD1_PREBLEND | VPP_VD1_POSTBLEND |
       VPP_COLOR_MNG_ENABLE,
       VPP_VD1_PREBLEND | VPP_VD1_POSTBLEND |
       VPP_COLOR_MNG_ENABLE,
       priv->io_base + _REG(VPP_MISC));
}
