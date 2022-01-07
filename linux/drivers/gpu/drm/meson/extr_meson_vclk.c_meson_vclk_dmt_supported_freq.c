
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct meson_drm {int dummy; } ;
typedef enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;


 int MODE_CLOCK_RANGE ;
 int MODE_OK ;
 scalar_t__ meson_hdmi_pll_find_params (struct meson_drm*,unsigned int,unsigned int*,unsigned int*,unsigned int*) ;

enum drm_mode_status
meson_vclk_dmt_supported_freq(struct meson_drm *priv, unsigned int freq)
{
 unsigned int od, m, frac;


 freq *= 10;

 if (meson_hdmi_pll_find_params(priv, freq, &m, &frac, &od))
  return MODE_OK;

 return MODE_CLOCK_RANGE;
}
