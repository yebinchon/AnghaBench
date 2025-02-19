
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int regs; } ;
struct sun8i_mixer {TYPE_2__ engine; TYPE_1__* cfg; } ;
struct drm_format_info {int hsub; int vsub; } ;
struct TYPE_3__ {scalar_t__ is_de3; } ;


 int SUN50I_SCALER_VSU_SCALE_MODE (int) ;
 int SUN50I_SCALER_VSU_SCALE_MODE_NORMAL ;
 int SUN50I_SCALER_VSU_SCALE_MODE_UI ;
 int SUN8I_SCALER_VSU_CHPHASE (int) ;
 int SUN8I_SCALER_VSU_CHSTEP (int) ;
 int SUN8I_SCALER_VSU_CINSIZE (int) ;
 int SUN8I_SCALER_VSU_CVPHASE (int) ;
 int SUN8I_SCALER_VSU_CVSTEP (int) ;
 int SUN8I_SCALER_VSU_OUTSIZE (int) ;
 int SUN8I_SCALER_VSU_YHPHASE (int) ;
 int SUN8I_SCALER_VSU_YHSTEP (int) ;
 int SUN8I_SCALER_VSU_YINSIZE (int) ;
 int SUN8I_SCALER_VSU_YVPHASE (int) ;
 int SUN8I_SCALER_VSU_YVSTEP (int) ;
 int SUN8I_VI_SCALER_PHASE_FRAC ;
 int SUN8I_VI_SCALER_SCALE_FRAC ;
 int SUN8I_VI_SCALER_SIZE (int,int) ;
 int regmap_write (int ,int ,int) ;
 int sun8i_vi_scaler_base (struct sun8i_mixer*,int) ;
 int sun8i_vi_scaler_set_coeff (int ,int,int,int,struct drm_format_info const*) ;

void sun8i_vi_scaler_setup(struct sun8i_mixer *mixer, int layer,
      u32 src_w, u32 src_h, u32 dst_w, u32 dst_h,
      u32 hscale, u32 vscale, u32 hphase, u32 vphase,
      const struct drm_format_info *format)
{
 u32 chphase, cvphase;
 u32 insize, outsize;
 u32 base;

 base = sun8i_vi_scaler_base(mixer, layer);

 hphase <<= SUN8I_VI_SCALER_PHASE_FRAC - 16;
 vphase <<= SUN8I_VI_SCALER_PHASE_FRAC - 16;
 hscale <<= SUN8I_VI_SCALER_SCALE_FRAC - 16;
 vscale <<= SUN8I_VI_SCALER_SCALE_FRAC - 16;

 insize = SUN8I_VI_SCALER_SIZE(src_w, src_h);
 outsize = SUN8I_VI_SCALER_SIZE(dst_w, dst_h);






 if (format->hsub == 2 && format->vsub == 2) {
  chphase = hphase >> 1;
  cvphase = (vphase >> 1) -
   (1UL << (SUN8I_VI_SCALER_SCALE_FRAC - 2));
 } else {
  chphase = hphase;
  cvphase = vphase;
 }

 if (mixer->cfg->is_de3) {
  u32 val;

  if (format->hsub == 1 && format->vsub == 1)
   val = SUN50I_SCALER_VSU_SCALE_MODE_UI;
  else
   val = SUN50I_SCALER_VSU_SCALE_MODE_NORMAL;

  regmap_write(mixer->engine.regs,
        SUN50I_SCALER_VSU_SCALE_MODE(base), val);
 }

 regmap_write(mixer->engine.regs,
       SUN8I_SCALER_VSU_OUTSIZE(base), outsize);
 regmap_write(mixer->engine.regs,
       SUN8I_SCALER_VSU_YINSIZE(base), insize);
 regmap_write(mixer->engine.regs,
       SUN8I_SCALER_VSU_YHSTEP(base), hscale);
 regmap_write(mixer->engine.regs,
       SUN8I_SCALER_VSU_YVSTEP(base), vscale);
 regmap_write(mixer->engine.regs,
       SUN8I_SCALER_VSU_YHPHASE(base), hphase);
 regmap_write(mixer->engine.regs,
       SUN8I_SCALER_VSU_YVPHASE(base), vphase);
 regmap_write(mixer->engine.regs,
       SUN8I_SCALER_VSU_CINSIZE(base),
       SUN8I_VI_SCALER_SIZE(src_w / format->hsub,
       src_h / format->vsub));
 regmap_write(mixer->engine.regs,
       SUN8I_SCALER_VSU_CHSTEP(base),
       hscale / format->hsub);
 regmap_write(mixer->engine.regs,
       SUN8I_SCALER_VSU_CVSTEP(base),
       vscale / format->vsub);
 regmap_write(mixer->engine.regs,
       SUN8I_SCALER_VSU_CHPHASE(base), chphase);
 regmap_write(mixer->engine.regs,
       SUN8I_SCALER_VSU_CVPHASE(base), cvphase);
 sun8i_vi_scaler_set_coeff(mixer->engine.regs, base,
      hscale, vscale, format);
}
