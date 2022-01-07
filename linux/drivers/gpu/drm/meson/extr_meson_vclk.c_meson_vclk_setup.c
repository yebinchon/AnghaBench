
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct meson_drm {int dummy; } ;
struct TYPE_2__ {int pixel_freq; unsigned int pll_base_freq; int vclk_div; int vid_pll_div; int pll_od3; int pll_od2; int pll_od1; } ;


 unsigned int FREQ_1000_1001 (unsigned int) ;
 unsigned int MESON_VCLK_HDMI_148500 ;
 unsigned int MESON_VCLK_HDMI_DDR_148500 ;
 unsigned int MESON_VCLK_HDMI_DDR_54000 ;
 unsigned int MESON_VCLK_HDMI_ENCI_54000 ;
 unsigned int MESON_VCLK_TARGET_CVBS ;
 unsigned int MESON_VCLK_TARGET_DMT ;
 int VID_PLL_DIV_5 ;
 int meson_vclk_set (struct meson_drm*,unsigned int,int ,int ,int ,int ,int,unsigned int,unsigned int,int,int) ;
 int meson_venci_cvbs_clock_config (struct meson_drm*) ;
 TYPE_1__* params ;
 int pr_err (char*,unsigned int) ;

void meson_vclk_setup(struct meson_drm *priv, unsigned int target,
        unsigned int vclk_freq, unsigned int venc_freq,
        unsigned int dac_freq, bool hdmi_use_enci)
{
 bool vic_alternate_clock = 0;
 unsigned int freq;
 unsigned int hdmi_tx_div;
 unsigned int venc_div;

 if (target == MESON_VCLK_TARGET_CVBS) {
  meson_venci_cvbs_clock_config(priv);
  return;
 } else if (target == MESON_VCLK_TARGET_DMT) {
  meson_vclk_set(priv, vclk_freq * 10, 0, 0, 0,
          VID_PLL_DIV_5, 2, 1, 1, 0, 0);
  return;
 }

 hdmi_tx_div = vclk_freq / dac_freq;

 if (hdmi_tx_div == 0) {
  pr_err("Fatal Error, invalid HDMI-TX freq %d\n",
         dac_freq);
  return;
 }

 venc_div = vclk_freq / venc_freq;

 if (venc_div == 0) {
  pr_err("Fatal Error, invalid HDMI venc freq %d\n",
         venc_freq);
  return;
 }

 for (freq = 0 ; params[freq].pixel_freq ; ++freq) {
  if (vclk_freq == params[freq].pixel_freq ||
      vclk_freq == FREQ_1000_1001(params[freq].pixel_freq)) {
   if (vclk_freq != params[freq].pixel_freq)
    vic_alternate_clock = 1;
   else
    vic_alternate_clock = 0;

   if (freq == MESON_VCLK_HDMI_ENCI_54000 &&
       !hdmi_use_enci)
    continue;

   if (freq == MESON_VCLK_HDMI_DDR_54000 &&
       hdmi_use_enci)
    continue;

   if (freq == MESON_VCLK_HDMI_DDR_148500 &&
       dac_freq == vclk_freq)
    continue;

   if (freq == MESON_VCLK_HDMI_148500 &&
       dac_freq != vclk_freq)
    continue;
   break;
  }
 }

 if (!params[freq].pixel_freq) {
  pr_err("Fatal Error, invalid HDMI vclk freq %d\n", vclk_freq);
  return;
 }

 meson_vclk_set(priv, params[freq].pll_base_freq,
         params[freq].pll_od1, params[freq].pll_od2,
         params[freq].pll_od3, params[freq].vid_pll_div,
         params[freq].vclk_div, hdmi_tx_div, venc_div,
         hdmi_use_enci, vic_alternate_clock);
}
