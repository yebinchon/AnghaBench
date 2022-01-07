
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum mdp_mixer_stage_id { ____Placeholder_mdp_mixer_stage_id } mdp_mixer_stage_id ;


 int MDP4_LAYERMIXER_IN_CFG_PIPE5__MASK ;
 int MDP4_LAYERMIXER_IN_CFG_PIPE5__SHIFT ;

__attribute__((used)) static inline uint32_t MDP4_LAYERMIXER_IN_CFG_PIPE5(enum mdp_mixer_stage_id val)
{
 return ((val) << MDP4_LAYERMIXER_IN_CFG_PIPE5__SHIFT) & MDP4_LAYERMIXER_IN_CFG_PIPE5__MASK;
}
