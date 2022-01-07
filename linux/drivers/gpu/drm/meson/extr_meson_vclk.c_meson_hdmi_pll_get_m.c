
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_drm {int dummy; } ;


 int VPU_COMPATIBLE_GXBB ;
 unsigned int XTAL_FREQ ;
 scalar_t__ meson_vpu_is_compatible (struct meson_drm*,int ) ;

__attribute__((used)) static unsigned int meson_hdmi_pll_get_m(struct meson_drm *priv,
      unsigned int pll_freq)
{

 if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXBB))
  pll_freq /= 2;

 return pll_freq / XTAL_FREQ;
}
