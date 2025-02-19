
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_kms {int dummy; } ;
struct mdp_kms {int dummy; } ;
struct mdp_irq {int irqmask; int irq; } ;
struct mdp4_kms {struct mdp_irq error_handler; } ;


 int MDP4_IRQ_EXTERNAL_INTF_UDERRUN ;
 int MDP4_IRQ_PRIMARY_INTF_UDERRUN ;
 int mdp4_irq_error_handler ;
 int mdp_irq_register (struct mdp_kms*,struct mdp_irq*) ;
 struct mdp4_kms* to_mdp4_kms (struct mdp_kms*) ;
 struct mdp_kms* to_mdp_kms (struct msm_kms*) ;

int mdp4_irq_postinstall(struct msm_kms *kms)
{
 struct mdp_kms *mdp_kms = to_mdp_kms(kms);
 struct mdp4_kms *mdp4_kms = to_mdp4_kms(mdp_kms);
 struct mdp_irq *error_handler = &mdp4_kms->error_handler;

 error_handler->irq = mdp4_irq_error_handler;
 error_handler->irqmask = MDP4_IRQ_PRIMARY_INTF_UDERRUN |
   MDP4_IRQ_EXTERNAL_INTF_UDERRUN;

 mdp_irq_register(mdp_kms, error_handler);

 return 0;
}
