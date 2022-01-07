
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mdp5_kms {int dummy; } ;
struct mdp5_ctl {int reg_offset; int ctlm; } ;


 struct mdp5_kms* get_kms (int ) ;
 int mdp5_write (struct mdp5_kms*,int ,int ) ;

__attribute__((used)) static inline
void ctl_write(struct mdp5_ctl *ctl, u32 reg, u32 data)
{
 struct mdp5_kms *mdp5_kms = get_kms(ctl->ctlm);

 (void)ctl->reg_offset;
 mdp5_write(mdp5_kms, reg, data);
}
