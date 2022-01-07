
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mdp5_ctl {int id; } ;


 int REG_MDP5_CTL_FLUSH (int ) ;
 int ctl_read (struct mdp5_ctl*,int ) ;

u32 mdp5_ctl_get_commit_status(struct mdp5_ctl *ctl)
{
 return ctl_read(ctl, REG_MDP5_CTL_FLUSH(ctl->id));
}
