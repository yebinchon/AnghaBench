
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MDP5_CTL_FLUSH_CURSOR_0 ;
 int MDP5_CTL_FLUSH_CURSOR_1 ;

u32 mdp_ctl_flush_mask_cursor(int cursor_id)
{
 switch (cursor_id) {
 case 0: return MDP5_CTL_FLUSH_CURSOR_0;
 case 1: return MDP5_CTL_FLUSH_CURSOR_1;
 default: return 0;
 }
}
