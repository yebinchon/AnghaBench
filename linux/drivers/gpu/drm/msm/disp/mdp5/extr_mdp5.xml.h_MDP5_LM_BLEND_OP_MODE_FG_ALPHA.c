
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum mdp_alpha_type { ____Placeholder_mdp_alpha_type } mdp_alpha_type ;


 int MDP5_LM_BLEND_OP_MODE_FG_ALPHA__MASK ;
 int MDP5_LM_BLEND_OP_MODE_FG_ALPHA__SHIFT ;

__attribute__((used)) static inline uint32_t MDP5_LM_BLEND_OP_MODE_FG_ALPHA(enum mdp_alpha_type val)
{
 return ((val) << MDP5_LM_BLEND_OP_MODE_FG_ALPHA__SHIFT) & MDP5_LM_BLEND_OP_MODE_FG_ALPHA__MASK;
}
