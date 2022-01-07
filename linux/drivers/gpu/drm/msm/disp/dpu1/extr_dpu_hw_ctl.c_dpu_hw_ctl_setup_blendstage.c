
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct dpu_hw_stage_cfg {int** multirect_index; int** stage; } ;
struct dpu_hw_blk_reg_map {int dummy; } ;
struct dpu_hw_ctl {TYPE_1__* mixer_hw_caps; int mixer_count; struct dpu_hw_blk_reg_map hw; } ;
typedef enum dpu_sspp_multirect_index { ____Placeholder_dpu_sspp_multirect_index } dpu_sspp_multirect_index ;
typedef enum dpu_lm { ____Placeholder_dpu_lm } dpu_lm ;
struct TYPE_2__ {int features; } ;


 int CTL_LAYER (int) ;
 int CTL_LAYER_EXT (int) ;
 int CTL_LAYER_EXT2 (int) ;
 int CTL_LAYER_EXT3 (int) ;
 int CTL_MIXER_BORDER_OUT ;
 int DPU_MIXER_SOURCESPLIT ;
 int DPU_REG_WRITE (struct dpu_hw_blk_reg_map*,int ,int) ;
 int DPU_SSPP_RECT_1 ;
 int PIPES_PER_STAGE ;
 int _mixer_stages (TYPE_1__*,int ,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void dpu_hw_ctl_setup_blendstage(struct dpu_hw_ctl *ctx,
 enum dpu_lm lm, struct dpu_hw_stage_cfg *stage_cfg)
{
 struct dpu_hw_blk_reg_map *c = &ctx->hw;
 u32 mixercfg = 0, mixercfg_ext = 0, mix, ext;
 u32 mixercfg_ext2 = 0, mixercfg_ext3 = 0;
 int i, j;
 int stages;
 int pipes_per_stage;

 stages = _mixer_stages(ctx->mixer_hw_caps, ctx->mixer_count, lm);
 if (stages < 0)
  return;

 if (test_bit(DPU_MIXER_SOURCESPLIT,
  &ctx->mixer_hw_caps->features))
  pipes_per_stage = PIPES_PER_STAGE;
 else
  pipes_per_stage = 1;

 mixercfg = CTL_MIXER_BORDER_OUT;

 if (!stage_cfg)
  goto exit;

 for (i = 0; i <= stages; i++) {

  mix = (i + 1) & 0x7;
  ext = i >= 7;

  for (j = 0 ; j < pipes_per_stage; j++) {
   enum dpu_sspp_multirect_index rect_index =
    stage_cfg->multirect_index[i][j];

   switch (stage_cfg->stage[i][j]) {
   case 131:
    if (rect_index == DPU_SSPP_RECT_1) {
     mixercfg_ext3 |= ((i + 1) & 0xF) << 0;
    } else {
     mixercfg |= mix << 0;
     mixercfg_ext |= ext << 0;
    }
    break;
   case 130:
    if (rect_index == DPU_SSPP_RECT_1) {
     mixercfg_ext3 |= ((i + 1) & 0xF) << 4;
    } else {
     mixercfg |= mix << 3;
     mixercfg_ext |= ext << 2;
    }
    break;
   case 129:
    if (rect_index == DPU_SSPP_RECT_1) {
     mixercfg_ext3 |= ((i + 1) & 0xF) << 8;
    } else {
     mixercfg |= mix << 6;
     mixercfg_ext |= ext << 4;
    }
    break;
   case 128:
    if (rect_index == DPU_SSPP_RECT_1) {
     mixercfg_ext3 |= ((i + 1) & 0xF) << 12;
    } else {
     mixercfg |= mix << 26;
     mixercfg_ext |= ext << 6;
    }
    break;
   case 135:
    mixercfg |= mix << 9;
    mixercfg_ext |= ext << 8;
    break;
   case 134:
    mixercfg |= mix << 12;
    mixercfg_ext |= ext << 10;
    break;
   case 133:
    mixercfg |= mix << 15;
    mixercfg_ext |= ext << 12;
    break;
   case 132:
    mixercfg |= mix << 29;
    mixercfg_ext |= ext << 14;
    break;
   case 139:
    if (rect_index == DPU_SSPP_RECT_1) {
     mixercfg_ext2 |= ((i + 1) & 0xF) << 8;
    } else {
     mixercfg |= mix << 18;
     mixercfg_ext |= ext << 16;
    }
    break;
   case 138:
    if (rect_index == DPU_SSPP_RECT_1) {
     mixercfg_ext2 |= ((i + 1) & 0xF) << 12;
    } else {
     mixercfg |= mix << 21;
     mixercfg_ext |= ext << 18;
    }
    break;
   case 137:
    if (rect_index == DPU_SSPP_RECT_1) {
     mixercfg_ext2 |= ((i + 1) & 0xF) << 16;
    } else {
     mix |= (i + 1) & 0xF;
     mixercfg_ext2 |= mix << 0;
    }
    break;
   case 136:
    if (rect_index == DPU_SSPP_RECT_1) {
     mixercfg_ext2 |= ((i + 1) & 0xF) << 20;
    } else {
     mix |= (i + 1) & 0xF;
     mixercfg_ext2 |= mix << 4;
    }
    break;
   case 141:
    mixercfg_ext |= ((i + 1) & 0xF) << 20;
    break;
   case 140:
    mixercfg_ext |= ((i + 1) & 0xF) << 26;
    break;
   default:
    break;
   }
  }
 }

exit:
 DPU_REG_WRITE(c, CTL_LAYER(lm), mixercfg);
 DPU_REG_WRITE(c, CTL_LAYER_EXT(lm), mixercfg_ext);
 DPU_REG_WRITE(c, CTL_LAYER_EXT2(lm), mixercfg_ext2);
 DPU_REG_WRITE(c, CTL_LAYER_EXT3(lm), mixercfg_ext3);
}
