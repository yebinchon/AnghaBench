
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef enum mdp_component_type { ____Placeholder_mdp_component_type } mdp_component_type ;
typedef enum mdp5_pipe { ____Placeholder_mdp5_pipe } mdp5_pipe ;


 scalar_t__ __offset_PIPE (int) ;
 scalar_t__ __offset_SW_PIX_EXT (int) ;

__attribute__((used)) static inline uint32_t REG_MDP5_PIPE_SW_PIX_EXT_LR(enum mdp5_pipe i0, enum mdp_component_type i1) { return 0x00000000 + __offset_PIPE(i0) + __offset_SW_PIX_EXT(i1); }
