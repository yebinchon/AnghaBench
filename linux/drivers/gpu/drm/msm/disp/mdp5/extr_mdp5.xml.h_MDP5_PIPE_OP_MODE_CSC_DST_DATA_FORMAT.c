
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum mdp5_data_format { ____Placeholder_mdp5_data_format } mdp5_data_format ;


 int MDP5_PIPE_OP_MODE_CSC_DST_DATA_FORMAT__MASK ;
 int MDP5_PIPE_OP_MODE_CSC_DST_DATA_FORMAT__SHIFT ;

__attribute__((used)) static inline uint32_t MDP5_PIPE_OP_MODE_CSC_DST_DATA_FORMAT(enum mdp5_data_format val)
{
 return ((val) << MDP5_PIPE_OP_MODE_CSC_DST_DATA_FORMAT__SHIFT) & MDP5_PIPE_OP_MODE_CSC_DST_DATA_FORMAT__MASK;
}
