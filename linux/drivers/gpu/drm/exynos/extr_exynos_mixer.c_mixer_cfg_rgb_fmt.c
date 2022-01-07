
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mixer_context {int dummy; } ;
struct drm_display_mode {int vdisplay; } ;
typedef enum hdmi_quantization_range { ____Placeholder_hdmi_quantization_range } hdmi_quantization_range ;


 int HDMI_QUANTIZATION_RANGE_FULL ;
 int MXR_CFG ;
 int MXR_CFG_QUANT_RANGE_FULL ;
 int MXR_CFG_QUANT_RANGE_LIMITED ;
 int MXR_CFG_RGB601 ;
 int MXR_CFG_RGB709 ;
 int MXR_CFG_RGB_FMT_MASK ;
 int MXR_CM_COEFF_CB ;
 int MXR_CM_COEFF_CR ;
 int MXR_CM_COEFF_RGB_FULL ;
 int MXR_CM_COEFF_Y ;
 int MXR_CSC_CT (double,double,double) ;
 int drm_default_rgb_quant_range (struct drm_display_mode*) ;
 int mixer_reg_write (struct mixer_context*,int ,int) ;
 int mixer_reg_writemask (struct mixer_context*,int ,int ,int ) ;

__attribute__((used)) static void mixer_cfg_rgb_fmt(struct mixer_context *ctx, struct drm_display_mode *mode)
{
 enum hdmi_quantization_range range = drm_default_rgb_quant_range(mode);
 u32 val;

 if (mode->vdisplay < 720) {
  val = MXR_CFG_RGB601;
 } else {
  val = MXR_CFG_RGB709;


  mixer_reg_write(ctx, MXR_CM_COEFF_Y,
   MXR_CSC_CT( 0.184, 0.614, 0.063) |
   MXR_CM_COEFF_RGB_FULL);
  mixer_reg_write(ctx, MXR_CM_COEFF_CB,
   MXR_CSC_CT(-0.102, -0.338, 0.440));
  mixer_reg_write(ctx, MXR_CM_COEFF_CR,
   MXR_CSC_CT( 0.440, -0.399, -0.040));
 }

 if (range == HDMI_QUANTIZATION_RANGE_FULL)
  val |= MXR_CFG_QUANT_RANGE_FULL;
 else
  val |= MXR_CFG_QUANT_RANGE_LIMITED;

 mixer_reg_writemask(ctx, MXR_CFG, val, MXR_CFG_RGB_FMT_MASK);
}
