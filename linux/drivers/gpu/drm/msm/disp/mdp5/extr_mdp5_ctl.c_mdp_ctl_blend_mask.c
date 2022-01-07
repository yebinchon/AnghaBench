
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum mdp_mixer_stage_id { ____Placeholder_mdp_mixer_stage_id } mdp_mixer_stage_id ;
typedef enum mdp5_pipe { ____Placeholder_mdp5_pipe } mdp5_pipe ;


 int MDP5_CTL_LAYER_REG_DMA0 (int) ;
 int MDP5_CTL_LAYER_REG_DMA1 (int) ;
 int MDP5_CTL_LAYER_REG_RGB0 (int) ;
 int MDP5_CTL_LAYER_REG_RGB1 (int) ;
 int MDP5_CTL_LAYER_REG_RGB2 (int) ;
 int MDP5_CTL_LAYER_REG_RGB3 (int) ;
 int MDP5_CTL_LAYER_REG_VIG0 (int) ;
 int MDP5_CTL_LAYER_REG_VIG1 (int) ;
 int MDP5_CTL_LAYER_REG_VIG2 (int) ;
 int MDP5_CTL_LAYER_REG_VIG3 (int) ;
__attribute__((used)) static u32 mdp_ctl_blend_mask(enum mdp5_pipe pipe,
  enum mdp_mixer_stage_id stage)
{
 switch (pipe) {
 case 131: return MDP5_CTL_LAYER_REG_VIG0(stage);
 case 130: return MDP5_CTL_LAYER_REG_VIG1(stage);
 case 129: return MDP5_CTL_LAYER_REG_VIG2(stage);
 case 135: return MDP5_CTL_LAYER_REG_RGB0(stage);
 case 134: return MDP5_CTL_LAYER_REG_RGB1(stage);
 case 133: return MDP5_CTL_LAYER_REG_RGB2(stage);
 case 137: return MDP5_CTL_LAYER_REG_DMA0(stage);
 case 136: return MDP5_CTL_LAYER_REG_DMA1(stage);
 case 128: return MDP5_CTL_LAYER_REG_VIG3(stage);
 case 132: return MDP5_CTL_LAYER_REG_RGB3(stage);
 case 139:
 case 138:
 default: return 0;
 }
}
