
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct drm_format_name_buf {int dummy; } ;
struct dpu_plane_state {int stage; } ;
struct TYPE_4__ {int (* setup_blend_config ) (struct dpu_hw_mixer*,int ,int,int ,int) ;} ;
struct dpu_hw_mixer {TYPE_2__ ops; } ;
struct TYPE_3__ {int pixel_format; } ;
struct dpu_format {int alpha_enable; TYPE_1__ base; } ;
struct dpu_crtc_mixer {struct dpu_hw_mixer* hw_lm; } ;


 int DPU_BLEND_BG_ALPHA_BG_CONST ;
 int DPU_BLEND_BG_ALPHA_FG_PIXEL ;
 int DPU_BLEND_BG_INV_ALPHA ;
 int DPU_BLEND_FG_ALPHA_FG_CONST ;
 int DPU_BLEND_FG_ALPHA_FG_PIXEL ;
 int DPU_DEBUG (char*,int ,int ,int) ;
 int drm_get_format_name (int ,struct drm_format_name_buf*) ;
 int stub1 (struct dpu_hw_mixer*,int ,int,int ,int) ;

__attribute__((used)) static void _dpu_crtc_setup_blend_cfg(struct dpu_crtc_mixer *mixer,
  struct dpu_plane_state *pstate, struct dpu_format *format)
{
 struct dpu_hw_mixer *lm = mixer->hw_lm;
 uint32_t blend_op;
 struct drm_format_name_buf format_name;


 blend_op = DPU_BLEND_FG_ALPHA_FG_CONST |
  DPU_BLEND_BG_ALPHA_BG_CONST;

 if (format->alpha_enable) {

  blend_op = DPU_BLEND_FG_ALPHA_FG_PIXEL |
   DPU_BLEND_BG_ALPHA_FG_PIXEL |
   DPU_BLEND_BG_INV_ALPHA;
 }

 lm->ops.setup_blend_config(lm, pstate->stage,
    0xFF, 0, blend_op);

 DPU_DEBUG("format:%s, alpha_en:%u blend_op:0x%x\n",
  drm_get_format_name(format->base.pixel_format, &format_name),
  format->alpha_enable, blend_op);
}
