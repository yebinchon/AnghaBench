
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum mdp_fetch_type { ____Placeholder_mdp_fetch_type } mdp_fetch_type ;


 int MDP5_PIPE_SRC_FORMAT_FETCH_TYPE__MASK ;
 int MDP5_PIPE_SRC_FORMAT_FETCH_TYPE__SHIFT ;

__attribute__((used)) static inline uint32_t MDP5_PIPE_SRC_FORMAT_FETCH_TYPE(enum mdp_fetch_type val)
{
 return ((val) << MDP5_PIPE_SRC_FORMAT_FETCH_TYPE__SHIFT) & MDP5_PIPE_SRC_FORMAT_FETCH_TYPE__MASK;
}
