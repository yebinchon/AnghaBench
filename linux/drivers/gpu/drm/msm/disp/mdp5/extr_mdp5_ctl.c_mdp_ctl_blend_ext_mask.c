
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum mdp_mixer_stage_id { ____Placeholder_mdp_mixer_stage_id } mdp_mixer_stage_id ;
typedef enum mdp5_pipe { ____Placeholder_mdp5_pipe } mdp5_pipe ;


 int MDP5_CTL_LAYER_EXT_REG_CURSOR0 (int) ;
 int MDP5_CTL_LAYER_EXT_REG_CURSOR1 (int) ;
 int MDP5_CTL_LAYER_EXT_REG_DMA0_BIT3 ;
 int MDP5_CTL_LAYER_EXT_REG_DMA1_BIT3 ;
 int MDP5_CTL_LAYER_EXT_REG_RGB0_BIT3 ;
 int MDP5_CTL_LAYER_EXT_REG_RGB1_BIT3 ;
 int MDP5_CTL_LAYER_EXT_REG_RGB2_BIT3 ;
 int MDP5_CTL_LAYER_EXT_REG_RGB3_BIT3 ;
 int MDP5_CTL_LAYER_EXT_REG_VIG0_BIT3 ;
 int MDP5_CTL_LAYER_EXT_REG_VIG1_BIT3 ;
 int MDP5_CTL_LAYER_EXT_REG_VIG2_BIT3 ;
 int MDP5_CTL_LAYER_EXT_REG_VIG3_BIT3 ;
 int STAGE6 ;

__attribute__((used)) static u32 mdp_ctl_blend_ext_mask(enum mdp5_pipe pipe,
  enum mdp_mixer_stage_id stage)
{
 if (stage < STAGE6 && (pipe != 139 && pipe != 138))
  return 0;

 switch (pipe) {
 case 131: return MDP5_CTL_LAYER_EXT_REG_VIG0_BIT3;
 case 130: return MDP5_CTL_LAYER_EXT_REG_VIG1_BIT3;
 case 129: return MDP5_CTL_LAYER_EXT_REG_VIG2_BIT3;
 case 135: return MDP5_CTL_LAYER_EXT_REG_RGB0_BIT3;
 case 134: return MDP5_CTL_LAYER_EXT_REG_RGB1_BIT3;
 case 133: return MDP5_CTL_LAYER_EXT_REG_RGB2_BIT3;
 case 137: return MDP5_CTL_LAYER_EXT_REG_DMA0_BIT3;
 case 136: return MDP5_CTL_LAYER_EXT_REG_DMA1_BIT3;
 case 128: return MDP5_CTL_LAYER_EXT_REG_VIG3_BIT3;
 case 132: return MDP5_CTL_LAYER_EXT_REG_RGB3_BIT3;
 case 139: return MDP5_CTL_LAYER_EXT_REG_CURSOR0(stage);
 case 138: return MDP5_CTL_LAYER_EXT_REG_CURSOR1(stage);
 default: return 0;
 }
}
