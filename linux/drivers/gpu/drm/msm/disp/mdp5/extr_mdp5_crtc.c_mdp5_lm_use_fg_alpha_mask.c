
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum mdp_mixer_stage_id { ____Placeholder_mdp_mixer_stage_id } mdp_mixer_stage_id ;


 int MDP5_LM_BLEND_COLOR_OUT_STAGE0_FG_ALPHA ;
 int MDP5_LM_BLEND_COLOR_OUT_STAGE1_FG_ALPHA ;
 int MDP5_LM_BLEND_COLOR_OUT_STAGE2_FG_ALPHA ;
 int MDP5_LM_BLEND_COLOR_OUT_STAGE3_FG_ALPHA ;
 int MDP5_LM_BLEND_COLOR_OUT_STAGE4_FG_ALPHA ;
 int MDP5_LM_BLEND_COLOR_OUT_STAGE5_FG_ALPHA ;
 int MDP5_LM_BLEND_COLOR_OUT_STAGE6_FG_ALPHA ;
__attribute__((used)) static inline u32 mdp5_lm_use_fg_alpha_mask(enum mdp_mixer_stage_id stage)
{
 switch (stage) {
 case 134: return MDP5_LM_BLEND_COLOR_OUT_STAGE0_FG_ALPHA;
 case 133: return MDP5_LM_BLEND_COLOR_OUT_STAGE1_FG_ALPHA;
 case 132: return MDP5_LM_BLEND_COLOR_OUT_STAGE2_FG_ALPHA;
 case 131: return MDP5_LM_BLEND_COLOR_OUT_STAGE3_FG_ALPHA;
 case 130: return MDP5_LM_BLEND_COLOR_OUT_STAGE4_FG_ALPHA;
 case 129: return MDP5_LM_BLEND_COLOR_OUT_STAGE5_FG_ALPHA;
 case 128: return MDP5_LM_BLEND_COLOR_OUT_STAGE6_FG_ALPHA;
 default:
  return 0;
 }
}
