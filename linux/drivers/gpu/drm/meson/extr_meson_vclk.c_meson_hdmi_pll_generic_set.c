
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_drm {int dummy; } ;


 int DRM_DEBUG_DRIVER (char*,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int DRM_ERROR (char*,unsigned int) ;
 scalar_t__ meson_hdmi_pll_find_params (struct meson_drm*,unsigned int,unsigned int*,unsigned int*,unsigned int*) ;
 int meson_hdmi_pll_set_params (struct meson_drm*,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static void meson_hdmi_pll_generic_set(struct meson_drm *priv,
           unsigned int pll_freq)
{
 unsigned int od, m, frac, od1, od2, od3;

 if (meson_hdmi_pll_find_params(priv, pll_freq, &m, &frac, &od)) {
  od3 = 1;
  if (od < 4) {
   od1 = 2;
   od2 = 1;
  } else {
   od2 = od / 4;
   od1 = od / od2;
  }

  DRM_DEBUG_DRIVER("PLL params for %dkHz: m=%x frac=%x od=%d/%d/%d\n",
     pll_freq, m, frac, od1, od2, od3);

  meson_hdmi_pll_set_params(priv, m, frac, od1, od2, od3);

  return;
 }

 DRM_ERROR("Fatal, unable to find parameters for PLL freq %d\n",
    pll_freq);
}
