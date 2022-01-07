
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum mdp_chroma_samp_type { ____Placeholder_mdp_chroma_samp_type } mdp_chroma_samp_type ;


 int MDP5_PIPE_SRC_FORMAT_CHROMA_SAMP__MASK ;
 int MDP5_PIPE_SRC_FORMAT_CHROMA_SAMP__SHIFT ;

__attribute__((used)) static inline uint32_t MDP5_PIPE_SRC_FORMAT_CHROMA_SAMP(enum mdp_chroma_samp_type val)
{
 return ((val) << MDP5_PIPE_SRC_FORMAT_CHROMA_SAMP__SHIFT) & MDP5_PIPE_SRC_FORMAT_CHROMA_SAMP__MASK;
}
