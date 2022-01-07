
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum mdp_bpc { ____Placeholder_mdp_bpc } mdp_bpc ;


 int MDP4_PIPE_SRC_FORMAT_B_BPC__MASK ;
 int MDP4_PIPE_SRC_FORMAT_B_BPC__SHIFT ;

__attribute__((used)) static inline uint32_t MDP4_PIPE_SRC_FORMAT_B_BPC(enum mdp_bpc val)
{
 return ((val) << MDP4_PIPE_SRC_FORMAT_B_BPC__SHIFT) & MDP4_PIPE_SRC_FORMAT_B_BPC__MASK;
}
