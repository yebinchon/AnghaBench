
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum mdp5_pipe_bwc { ____Placeholder_mdp5_pipe_bwc } mdp5_pipe_bwc ;


 int MDP5_PIPE_SRC_OP_MODE_BWC__MASK ;
 int MDP5_PIPE_SRC_OP_MODE_BWC__SHIFT ;

__attribute__((used)) static inline uint32_t MDP5_PIPE_SRC_OP_MODE_BWC(enum mdp5_pipe_bwc val)
{
 return ((val) << MDP5_PIPE_SRC_OP_MODE_BWC__SHIFT) & MDP5_PIPE_SRC_OP_MODE_BWC__MASK;
}
