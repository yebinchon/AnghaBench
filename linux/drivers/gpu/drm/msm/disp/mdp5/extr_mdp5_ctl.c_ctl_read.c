
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mdp5_kms {int dummy; } ;
struct mdp5_ctl {int reg_offset; int ctlm; } ;


 struct mdp5_kms* get_kms (int ) ;
 int mdp5_read (struct mdp5_kms*,int ) ;

__attribute__((used)) static inline
u32 ctl_read(struct mdp5_ctl *ctl, u32 reg)
{
 struct mdp5_kms *mdp5_kms = get_kms(ctl->ctlm);

 (void)ctl->reg_offset;
 return mdp5_read(mdp5_kms, reg);
}
