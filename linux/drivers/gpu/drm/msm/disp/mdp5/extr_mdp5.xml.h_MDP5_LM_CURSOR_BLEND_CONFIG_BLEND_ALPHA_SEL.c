
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum mdp5_cursor_alpha { ____Placeholder_mdp5_cursor_alpha } mdp5_cursor_alpha ;


 int MDP5_LM_CURSOR_BLEND_CONFIG_BLEND_ALPHA_SEL__MASK ;
 int MDP5_LM_CURSOR_BLEND_CONFIG_BLEND_ALPHA_SEL__SHIFT ;

__attribute__((used)) static inline uint32_t MDP5_LM_CURSOR_BLEND_CONFIG_BLEND_ALPHA_SEL(enum mdp5_cursor_alpha val)
{
 return ((val) << MDP5_LM_CURSOR_BLEND_CONFIG_BLEND_ALPHA_SEL__SHIFT) & MDP5_LM_CURSOR_BLEND_CONFIG_BLEND_ALPHA_SEL__MASK;
}
