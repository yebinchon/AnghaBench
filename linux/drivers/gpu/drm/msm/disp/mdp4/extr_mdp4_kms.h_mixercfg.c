
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum mdp_mixer_stage_id { ____Placeholder_mdp_mixer_stage_id } mdp_mixer_stage_id ;
typedef enum mdp4_pipe { ____Placeholder_mdp4_pipe } mdp4_pipe ;


 int COND (int,int) ;
 int MDP4_LAYERMIXER_IN_CFG_PIPE0 (int) ;
 int MDP4_LAYERMIXER_IN_CFG_PIPE0_MIXER1 ;
 int MDP4_LAYERMIXER_IN_CFG_PIPE0__MASK ;
 int MDP4_LAYERMIXER_IN_CFG_PIPE1 (int) ;
 int MDP4_LAYERMIXER_IN_CFG_PIPE1_MIXER1 ;
 int MDP4_LAYERMIXER_IN_CFG_PIPE1__MASK ;
 int MDP4_LAYERMIXER_IN_CFG_PIPE2 (int) ;
 int MDP4_LAYERMIXER_IN_CFG_PIPE2_MIXER1 ;
 int MDP4_LAYERMIXER_IN_CFG_PIPE2__MASK ;
 int MDP4_LAYERMIXER_IN_CFG_PIPE3 (int) ;
 int MDP4_LAYERMIXER_IN_CFG_PIPE3_MIXER1 ;
 int MDP4_LAYERMIXER_IN_CFG_PIPE3__MASK ;
 int MDP4_LAYERMIXER_IN_CFG_PIPE4 (int) ;
 int MDP4_LAYERMIXER_IN_CFG_PIPE4_MIXER1 ;
 int MDP4_LAYERMIXER_IN_CFG_PIPE4__MASK ;
 int MDP4_LAYERMIXER_IN_CFG_PIPE5 (int) ;
 int MDP4_LAYERMIXER_IN_CFG_PIPE5_MIXER1 ;
 int MDP4_LAYERMIXER_IN_CFG_PIPE5__MASK ;
 int MDP4_LAYERMIXER_IN_CFG_PIPE6 (int) ;
 int MDP4_LAYERMIXER_IN_CFG_PIPE6_MIXER1 ;
 int MDP4_LAYERMIXER_IN_CFG_PIPE6__MASK ;







 int WARN (int,char*) ;

__attribute__((used)) static inline uint32_t mixercfg(uint32_t mixer_cfg, int mixer,
  enum mdp4_pipe pipe, enum mdp_mixer_stage_id stage)
{
 switch (pipe) {
 case 131:
  mixer_cfg &= ~(MDP4_LAYERMIXER_IN_CFG_PIPE0__MASK |
    MDP4_LAYERMIXER_IN_CFG_PIPE0_MIXER1);
  mixer_cfg |= MDP4_LAYERMIXER_IN_CFG_PIPE0(stage) |
   COND(mixer == 1, MDP4_LAYERMIXER_IN_CFG_PIPE0_MIXER1);
  break;
 case 130:
  mixer_cfg &= ~(MDP4_LAYERMIXER_IN_CFG_PIPE1__MASK |
    MDP4_LAYERMIXER_IN_CFG_PIPE1_MIXER1);
  mixer_cfg |= MDP4_LAYERMIXER_IN_CFG_PIPE1(stage) |
   COND(mixer == 1, MDP4_LAYERMIXER_IN_CFG_PIPE1_MIXER1);
  break;
 case 134:
  mixer_cfg &= ~(MDP4_LAYERMIXER_IN_CFG_PIPE2__MASK |
    MDP4_LAYERMIXER_IN_CFG_PIPE2_MIXER1);
  mixer_cfg |= MDP4_LAYERMIXER_IN_CFG_PIPE2(stage) |
   COND(mixer == 1, MDP4_LAYERMIXER_IN_CFG_PIPE2_MIXER1);
  break;
 case 133:
  mixer_cfg &= ~(MDP4_LAYERMIXER_IN_CFG_PIPE3__MASK |
    MDP4_LAYERMIXER_IN_CFG_PIPE3_MIXER1);
  mixer_cfg |= MDP4_LAYERMIXER_IN_CFG_PIPE3(stage) |
   COND(mixer == 1, MDP4_LAYERMIXER_IN_CFG_PIPE3_MIXER1);
  break;
 case 132:
  mixer_cfg &= ~(MDP4_LAYERMIXER_IN_CFG_PIPE4__MASK |
    MDP4_LAYERMIXER_IN_CFG_PIPE4_MIXER1);
  mixer_cfg |= MDP4_LAYERMIXER_IN_CFG_PIPE4(stage) |
   COND(mixer == 1, MDP4_LAYERMIXER_IN_CFG_PIPE4_MIXER1);
  break;
 case 129:
  mixer_cfg &= ~(MDP4_LAYERMIXER_IN_CFG_PIPE5__MASK |
    MDP4_LAYERMIXER_IN_CFG_PIPE5_MIXER1);
  mixer_cfg |= MDP4_LAYERMIXER_IN_CFG_PIPE5(stage) |
   COND(mixer == 1, MDP4_LAYERMIXER_IN_CFG_PIPE5_MIXER1);
  break;
 case 128:
  mixer_cfg &= ~(MDP4_LAYERMIXER_IN_CFG_PIPE6__MASK |
    MDP4_LAYERMIXER_IN_CFG_PIPE6_MIXER1);
  mixer_cfg |= MDP4_LAYERMIXER_IN_CFG_PIPE6(stage) |
   COND(mixer == 1, MDP4_LAYERMIXER_IN_CFG_PIPE6_MIXER1);
  break;
 default:
  WARN(1, "invalid pipe");
  break;
 }

 return mixer_cfg;
}
