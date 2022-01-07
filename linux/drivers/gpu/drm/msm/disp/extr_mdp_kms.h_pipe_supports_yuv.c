
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int MDP_PIPE_CAP_CSC ;
 int MDP_PIPE_CAP_SCALE ;

__attribute__((used)) static inline bool pipe_supports_yuv(uint32_t pipe_caps)
{
 return (pipe_caps & MDP_PIPE_CAP_SCALE) &&
  (pipe_caps & MDP_PIPE_CAP_CSC);
}
