
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum mdp4_pipe { ____Placeholder_mdp4_pipe } mdp4_pipe ;


 int MDP_PIPE_CAP_CSC ;
 int MDP_PIPE_CAP_HFLIP ;
 int MDP_PIPE_CAP_SCALE ;
 int MDP_PIPE_CAP_VFLIP ;
__attribute__((used)) static inline uint32_t mdp4_pipe_caps(enum mdp4_pipe pipe)
{
 switch (pipe) {
 case 131:
 case 130:
 case 129:
 case 128:
  return MDP_PIPE_CAP_HFLIP | MDP_PIPE_CAP_VFLIP |
    MDP_PIPE_CAP_SCALE | MDP_PIPE_CAP_CSC;
 case 134:
 case 133:
 case 132:
  return MDP_PIPE_CAP_SCALE;
 default:
  return 0;
 }
}
