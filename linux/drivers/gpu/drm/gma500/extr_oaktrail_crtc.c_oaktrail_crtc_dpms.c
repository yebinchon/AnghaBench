
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct psb_offset {int dpll; int conf; int base; int cntr; } ;
struct gma_crtc {int pipe; } ;
struct drm_psb_private {struct psb_offset* regmap; } ;
struct drm_device {struct drm_psb_private* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;


 int DISPLAY_PLANE_ENABLE ;
 int DPLL_VCO_ENABLE ;




 int DSPARB ;
 int DSPCHICKENBIT ;
 int DSPFW1 ;
 int DSPFW2 ;
 int DSPFW3 ;
 int DSPFW4 ;
 int DSPFW5 ;
 int DSPFW6 ;
 int INTEL_OUTPUT_HDMI ;
 int INTEL_OUTPUT_SDVO ;
 int PIPEACONF_ENABLE ;
 int REG_READ (int ) ;
 int REG_READ_WITH_AUX (int ,int) ;
 int REG_WRITE (int ,int) ;
 int REG_WRITE_WITH_AUX (int ,int,int) ;
 int VGACNTRL ;
 int VGA_DISP_DISABLE ;
 int gma_crtc_load_lut (struct drm_crtc*) ;
 scalar_t__ gma_pipe_has_type (struct drm_crtc*,int ) ;
 int gma_power_begin (struct drm_device*,int) ;
 int gma_power_end (struct drm_device*) ;
 int gma_wait_for_vblank (struct drm_device*) ;
 int oaktrail_crtc_hdmi_dpms (struct drm_crtc*,int) ;
 struct gma_crtc* to_gma_crtc (struct drm_crtc*) ;
 int udelay (int) ;

__attribute__((used)) static void oaktrail_crtc_dpms(struct drm_crtc *crtc, int mode)
{
 struct drm_device *dev = crtc->dev;
 struct drm_psb_private *dev_priv = dev->dev_private;
 struct gma_crtc *gma_crtc = to_gma_crtc(crtc);
 int pipe = gma_crtc->pipe;
 const struct psb_offset *map = &dev_priv->regmap[pipe];
 u32 temp;
 int i;
 int need_aux = gma_pipe_has_type(crtc, INTEL_OUTPUT_SDVO) ? 1 : 0;

 if (gma_pipe_has_type(crtc, INTEL_OUTPUT_HDMI)) {
  oaktrail_crtc_hdmi_dpms(crtc, mode);
  return;
 }

 if (!gma_power_begin(dev, 1))
  return;




 switch (mode) {
 case 130:
 case 129:
 case 128:
  for (i = 0; i <= need_aux; i++) {

   temp = REG_READ_WITH_AUX(map->dpll, i);
   if ((temp & DPLL_VCO_ENABLE) == 0) {
    REG_WRITE_WITH_AUX(map->dpll, temp, i);
    REG_READ_WITH_AUX(map->dpll, i);

    udelay(150);
    REG_WRITE_WITH_AUX(map->dpll,
         temp | DPLL_VCO_ENABLE, i);
    REG_READ_WITH_AUX(map->dpll, i);

    udelay(150);
    REG_WRITE_WITH_AUX(map->dpll,
         temp | DPLL_VCO_ENABLE, i);
    REG_READ_WITH_AUX(map->dpll, i);

    udelay(150);
   }


   temp = REG_READ_WITH_AUX(map->conf, i);
   if ((temp & PIPEACONF_ENABLE) == 0) {
    REG_WRITE_WITH_AUX(map->conf,
         temp | PIPEACONF_ENABLE, i);
   }


   temp = REG_READ_WITH_AUX(map->cntr, i);
   if ((temp & DISPLAY_PLANE_ENABLE) == 0) {
    REG_WRITE_WITH_AUX(map->cntr,
         temp | DISPLAY_PLANE_ENABLE,
         i);

    REG_WRITE_WITH_AUX(map->base,
     REG_READ_WITH_AUX(map->base, i), i);
   }

  }
  gma_crtc_load_lut(crtc);




  break;
 case 131:




  for (i = 0; i <= need_aux; i++) {

   REG_WRITE_WITH_AUX(VGACNTRL, VGA_DISP_DISABLE, i);

   temp = REG_READ_WITH_AUX(map->cntr, i);
   if ((temp & DISPLAY_PLANE_ENABLE) != 0) {
    REG_WRITE_WITH_AUX(map->cntr,
     temp & ~DISPLAY_PLANE_ENABLE, i);

    REG_WRITE_WITH_AUX(map->base,
         REG_READ(map->base), i);
    REG_READ_WITH_AUX(map->base, i);
   }


   temp = REG_READ_WITH_AUX(map->conf, i);
   if ((temp & PIPEACONF_ENABLE) != 0) {
    REG_WRITE_WITH_AUX(map->conf,
         temp & ~PIPEACONF_ENABLE, i);
    REG_READ_WITH_AUX(map->conf, i);
   }

   gma_wait_for_vblank(dev);

   temp = REG_READ_WITH_AUX(map->dpll, i);
   if ((temp & DPLL_VCO_ENABLE) != 0) {
    REG_WRITE_WITH_AUX(map->dpll,
         temp & ~DPLL_VCO_ENABLE, i);
    REG_READ_WITH_AUX(map->dpll, i);
   }


   udelay(150);
  }
  break;
 }


 REG_WRITE(DSPARB, 0x3f80);
 REG_WRITE(DSPFW1, 0x3f8f0404);
 REG_WRITE(DSPFW2, 0x04040f04);
 REG_WRITE(DSPFW3, 0x0);
 REG_WRITE(DSPFW4, 0x04040404);
 REG_WRITE(DSPFW5, 0x04040404);
 REG_WRITE(DSPFW6, 0x78);
 REG_WRITE(DSPCHICKENBIT, REG_READ(DSPCHICKENBIT) | 0xc040);

 gma_power_end(dev);
}
