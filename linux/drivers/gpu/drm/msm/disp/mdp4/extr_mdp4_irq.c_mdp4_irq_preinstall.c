
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_kms {int dummy; } ;
struct mdp4_kms {int dummy; } ;


 int REG_MDP4_INTR_CLEAR ;
 int REG_MDP4_INTR_ENABLE ;
 int mdp4_disable (struct mdp4_kms*) ;
 int mdp4_enable (struct mdp4_kms*) ;
 int mdp4_write (struct mdp4_kms*,int ,int) ;
 struct mdp4_kms* to_mdp4_kms (int ) ;
 int to_mdp_kms (struct msm_kms*) ;

void mdp4_irq_preinstall(struct msm_kms *kms)
{
 struct mdp4_kms *mdp4_kms = to_mdp4_kms(to_mdp_kms(kms));
 mdp4_enable(mdp4_kms);
 mdp4_write(mdp4_kms, REG_MDP4_INTR_CLEAR, 0xffffffff);
 mdp4_write(mdp4_kms, REG_MDP4_INTR_ENABLE, 0x00000000);
 mdp4_disable(mdp4_kms);
}
