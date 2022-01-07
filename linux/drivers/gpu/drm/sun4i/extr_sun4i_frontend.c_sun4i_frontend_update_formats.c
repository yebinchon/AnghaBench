
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef int u32 ;
struct sun4i_frontend {int regs; TYPE_2__* data; } ;
struct drm_plane_state {struct drm_framebuffer* fb; } ;
struct drm_plane {struct drm_plane_state* state; } ;
struct drm_framebuffer {int modifier; struct drm_format_info* format; } ;
struct drm_format_info {scalar_t__ is_yuv; } ;
struct TYPE_4__ {TYPE_1__* ch_phase; } ;
struct TYPE_3__ {int horzphase; int* vertphase; } ;


 unsigned int ARRAY_SIZE (int*) ;
 int DRM_DEBUG_DRIVER (char*) ;
 int SUN4I_FRONTEND_BYPASS_CSC_EN ;
 int SUN4I_FRONTEND_BYPASS_REG ;
 int SUN4I_FRONTEND_CH0_HORZPHASE_REG ;
 int SUN4I_FRONTEND_CH0_VERTPHASE0_REG ;
 int SUN4I_FRONTEND_CH0_VERTPHASE1_REG ;
 int SUN4I_FRONTEND_CH1_HORZPHASE_REG ;
 int SUN4I_FRONTEND_CH1_VERTPHASE0_REG ;
 int SUN4I_FRONTEND_CH1_VERTPHASE1_REG ;
 int SUN4I_FRONTEND_CSC_COEF_REG (unsigned int) ;
 int SUN4I_FRONTEND_INPUT_FMT_REG ;
 int SUN4I_FRONTEND_OUTPUT_FMT_REG ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int) ;
 int sun4i_frontend_drm_format_to_input_fmt (struct drm_format_info const*,int*) ;
 int sun4i_frontend_drm_format_to_input_mode (struct drm_format_info const*,int ,int*) ;
 int sun4i_frontend_drm_format_to_input_sequence (struct drm_format_info const*,int*) ;
 int sun4i_frontend_drm_format_to_output_fmt (int ,int*) ;
 int* sunxi_bt601_yuv2rgb_coef ;

int sun4i_frontend_update_formats(struct sun4i_frontend *frontend,
      struct drm_plane *plane, uint32_t out_fmt)
{
 struct drm_plane_state *state = plane->state;
 struct drm_framebuffer *fb = state->fb;
 const struct drm_format_info *format = fb->format;
 uint64_t modifier = fb->modifier;
 u32 out_fmt_val;
 u32 in_fmt_val, in_mod_val, in_ps_val;
 unsigned int i;
 u32 bypass;
 int ret;

 ret = sun4i_frontend_drm_format_to_input_fmt(format, &in_fmt_val);
 if (ret) {
  DRM_DEBUG_DRIVER("Invalid input format\n");
  return ret;
 }

 ret = sun4i_frontend_drm_format_to_input_mode(format, modifier,
            &in_mod_val);
 if (ret) {
  DRM_DEBUG_DRIVER("Invalid input mode\n");
  return ret;
 }

 ret = sun4i_frontend_drm_format_to_input_sequence(format, &in_ps_val);
 if (ret) {
  DRM_DEBUG_DRIVER("Invalid pixel sequence\n");
  return ret;
 }

 ret = sun4i_frontend_drm_format_to_output_fmt(out_fmt, &out_fmt_val);
 if (ret) {
  DRM_DEBUG_DRIVER("Invalid output format\n");
  return ret;
 }





 regmap_write(frontend->regs, SUN4I_FRONTEND_CH0_HORZPHASE_REG,
       frontend->data->ch_phase[0].horzphase);
 regmap_write(frontend->regs, SUN4I_FRONTEND_CH1_HORZPHASE_REG,
       frontend->data->ch_phase[1].horzphase);
 regmap_write(frontend->regs, SUN4I_FRONTEND_CH0_VERTPHASE0_REG,
       frontend->data->ch_phase[0].vertphase[0]);
 regmap_write(frontend->regs, SUN4I_FRONTEND_CH1_VERTPHASE0_REG,
       frontend->data->ch_phase[1].vertphase[0]);
 regmap_write(frontend->regs, SUN4I_FRONTEND_CH0_VERTPHASE1_REG,
       frontend->data->ch_phase[0].vertphase[1]);
 regmap_write(frontend->regs, SUN4I_FRONTEND_CH1_VERTPHASE1_REG,
       frontend->data->ch_phase[1].vertphase[1]);







 if (format->is_yuv) {

  bypass = 0;

  for (i = 0; i < ARRAY_SIZE(sunxi_bt601_yuv2rgb_coef); i++)
   regmap_write(frontend->regs,
         SUN4I_FRONTEND_CSC_COEF_REG(i),
         sunxi_bt601_yuv2rgb_coef[i]);
 } else {
  bypass = SUN4I_FRONTEND_BYPASS_CSC_EN;
 }

 regmap_update_bits(frontend->regs, SUN4I_FRONTEND_BYPASS_REG,
      SUN4I_FRONTEND_BYPASS_CSC_EN, bypass);

 regmap_write(frontend->regs, SUN4I_FRONTEND_INPUT_FMT_REG,
       in_mod_val | in_fmt_val | in_ps_val);






 regmap_write(frontend->regs, SUN4I_FRONTEND_OUTPUT_FMT_REG,
       out_fmt_val);

 return 0;
}
