
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum mdp_mixer_stage_id { ____Placeholder_mdp_mixer_stage_id } mdp_mixer_stage_id ;


 int MDP5_CTL_LAYER_EXT_REG_CURSOR0__MASK ;
 int MDP5_CTL_LAYER_EXT_REG_CURSOR0__SHIFT ;

__attribute__((used)) static inline uint32_t MDP5_CTL_LAYER_EXT_REG_CURSOR0(enum mdp_mixer_stage_id val)
{
 return ((val) << MDP5_CTL_LAYER_EXT_REG_CURSOR0__SHIFT) & MDP5_CTL_LAYER_EXT_REG_CURSOR0__MASK;
}
