
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_kms {int dummy; } ;
struct mdp_kms {int dummy; } ;
struct mdp_irq {int irqmask; int irq; } ;
struct mdp5_kms {struct mdp_irq error_handler; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int MDP5_IRQ_INTF0_UNDER_RUN ;
 int MDP5_IRQ_INTF1_UNDER_RUN ;
 int MDP5_IRQ_INTF2_UNDER_RUN ;
 int MDP5_IRQ_INTF3_UNDER_RUN ;
 int mdp5_irq_error_handler ;
 int mdp_irq_register (struct mdp_kms*,struct mdp_irq*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;
 struct mdp5_kms* to_mdp5_kms (struct mdp_kms*) ;
 struct mdp_kms* to_mdp_kms (struct msm_kms*) ;

int mdp5_irq_postinstall(struct msm_kms *kms)
{
 struct mdp_kms *mdp_kms = to_mdp_kms(kms);
 struct mdp5_kms *mdp5_kms = to_mdp5_kms(mdp_kms);
 struct device *dev = &mdp5_kms->pdev->dev;
 struct mdp_irq *error_handler = &mdp5_kms->error_handler;

 error_handler->irq = mdp5_irq_error_handler;
 error_handler->irqmask = MDP5_IRQ_INTF0_UNDER_RUN |
   MDP5_IRQ_INTF1_UNDER_RUN |
   MDP5_IRQ_INTF2_UNDER_RUN |
   MDP5_IRQ_INTF3_UNDER_RUN;

 pm_runtime_get_sync(dev);
 mdp_irq_register(mdp_kms, error_handler);
 pm_runtime_put_sync(dev);

 return 0;
}
