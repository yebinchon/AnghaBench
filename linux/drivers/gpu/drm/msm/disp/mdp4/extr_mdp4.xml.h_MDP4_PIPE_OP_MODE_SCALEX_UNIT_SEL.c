
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum mdp4_scale_unit { ____Placeholder_mdp4_scale_unit } mdp4_scale_unit ;


 int MDP4_PIPE_OP_MODE_SCALEX_UNIT_SEL__MASK ;
 int MDP4_PIPE_OP_MODE_SCALEX_UNIT_SEL__SHIFT ;

__attribute__((used)) static inline uint32_t MDP4_PIPE_OP_MODE_SCALEX_UNIT_SEL(enum mdp4_scale_unit val)
{
 return ((val) << MDP4_PIPE_OP_MODE_SCALEX_UNIT_SEL__SHIFT) & MDP4_PIPE_OP_MODE_SCALEX_UNIT_SEL__MASK;
}
