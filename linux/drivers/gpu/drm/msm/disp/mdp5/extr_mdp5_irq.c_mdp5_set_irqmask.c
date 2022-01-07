
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mdp_kms {int dummy; } ;


 int REG_MDP5_INTR_CLEAR ;
 int REG_MDP5_INTR_EN ;
 int mdp5_write (int ,int ,int) ;
 int to_mdp5_kms (struct mdp_kms*) ;

void mdp5_set_irqmask(struct mdp_kms *mdp_kms, uint32_t irqmask,
  uint32_t old_irqmask)
{
 mdp5_write(to_mdp5_kms(mdp_kms), REG_MDP5_INTR_CLEAR,
     irqmask ^ (irqmask & old_irqmask));
 mdp5_write(to_mdp5_kms(mdp_kms), REG_MDP5_INTR_EN, irqmask);
}
