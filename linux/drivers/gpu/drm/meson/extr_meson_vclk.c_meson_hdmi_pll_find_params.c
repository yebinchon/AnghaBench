
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_drm {int dummy; } ;


 int DRM_DEBUG_DRIVER (char*,unsigned int,unsigned int,unsigned int,unsigned int) ;
 unsigned int meson_hdmi_pll_get_frac (struct meson_drm*,unsigned int,unsigned int) ;
 unsigned int meson_hdmi_pll_get_m (struct meson_drm*,unsigned int) ;
 scalar_t__ meson_hdmi_pll_validate_params (struct meson_drm*,unsigned int,unsigned int) ;

__attribute__((used)) static bool meson_hdmi_pll_find_params(struct meson_drm *priv,
           unsigned int freq,
           unsigned int *m,
           unsigned int *frac,
           unsigned int *od)
{

 for (*od = 16 ; *od > 1 ; *od >>= 1) {
  *m = meson_hdmi_pll_get_m(priv, freq * *od);
  if (!*m)
   continue;
  *frac = meson_hdmi_pll_get_frac(priv, *m, freq * *od);

  DRM_DEBUG_DRIVER("PLL params for %dkHz: m=%x frac=%x od=%d\n",
     freq, *m, *frac, *od);

  if (meson_hdmi_pll_validate_params(priv, *m, *frac))
   return 1;
 }

 return 0;
}
