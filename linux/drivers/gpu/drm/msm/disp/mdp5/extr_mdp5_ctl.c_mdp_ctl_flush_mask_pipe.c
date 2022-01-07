
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum mdp5_pipe { ____Placeholder_mdp5_pipe } mdp5_pipe ;


 int MDP5_CTL_FLUSH_CURSOR_0 ;
 int MDP5_CTL_FLUSH_CURSOR_1 ;
 int MDP5_CTL_FLUSH_DMA0 ;
 int MDP5_CTL_FLUSH_DMA1 ;
 int MDP5_CTL_FLUSH_RGB0 ;
 int MDP5_CTL_FLUSH_RGB1 ;
 int MDP5_CTL_FLUSH_RGB2 ;
 int MDP5_CTL_FLUSH_RGB3 ;
 int MDP5_CTL_FLUSH_VIG0 ;
 int MDP5_CTL_FLUSH_VIG1 ;
 int MDP5_CTL_FLUSH_VIG2 ;
 int MDP5_CTL_FLUSH_VIG3 ;
u32 mdp_ctl_flush_mask_pipe(enum mdp5_pipe pipe)
{
 switch (pipe) {
 case 131: return MDP5_CTL_FLUSH_VIG0;
 case 130: return MDP5_CTL_FLUSH_VIG1;
 case 129: return MDP5_CTL_FLUSH_VIG2;
 case 135: return MDP5_CTL_FLUSH_RGB0;
 case 134: return MDP5_CTL_FLUSH_RGB1;
 case 133: return MDP5_CTL_FLUSH_RGB2;
 case 137: return MDP5_CTL_FLUSH_DMA0;
 case 136: return MDP5_CTL_FLUSH_DMA1;
 case 128: return MDP5_CTL_FLUSH_VIG3;
 case 132: return MDP5_CTL_FLUSH_RGB3;
 case 139: return MDP5_CTL_FLUSH_CURSOR_0;
 case 138: return MDP5_CTL_FLUSH_CURSOR_1;
 default: return 0;
 }
}
