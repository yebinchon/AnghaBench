
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mdp_kms {int dummy; } ;


 int REG_MDP4_INTR_CLEAR ;
 int REG_MDP4_INTR_ENABLE ;
 int mdp4_write (int ,int ,int) ;
 int to_mdp4_kms (struct mdp_kms*) ;

void mdp4_set_irqmask(struct mdp_kms *mdp_kms, uint32_t irqmask,
  uint32_t old_irqmask)
{
 mdp4_write(to_mdp4_kms(mdp_kms), REG_MDP4_INTR_CLEAR,
  irqmask ^ (irqmask & old_irqmask));
 mdp4_write(to_mdp4_kms(mdp_kms), REG_MDP4_INTR_ENABLE, irqmask);
}
