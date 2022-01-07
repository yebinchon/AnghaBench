
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MDP5_CTL_FLUSH_LM0 ;
 int MDP5_CTL_FLUSH_LM1 ;
 int MDP5_CTL_FLUSH_LM2 ;
 int MDP5_CTL_FLUSH_LM3 ;
 int MDP5_CTL_FLUSH_LM4 ;
 int MDP5_CTL_FLUSH_LM5 ;

u32 mdp_ctl_flush_mask_lm(int lm)
{
 switch (lm) {
 case 0: return MDP5_CTL_FLUSH_LM0;
 case 1: return MDP5_CTL_FLUSH_LM1;
 case 2: return MDP5_CTL_FLUSH_LM2;
 case 3: return MDP5_CTL_FLUSH_LM3;
 case 4: return MDP5_CTL_FLUSH_LM4;
 case 5: return MDP5_CTL_FLUSH_LM5;
 default: return 0;
 }
}
