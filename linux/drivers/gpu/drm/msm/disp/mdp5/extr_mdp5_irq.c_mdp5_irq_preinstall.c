
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_kms {int dummy; } ;
struct mdp5_kms {TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int REG_MDP5_INTR_CLEAR ;
 int REG_MDP5_INTR_EN ;
 int mdp5_write (struct mdp5_kms*,int ,int) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;
 struct mdp5_kms* to_mdp5_kms (int ) ;
 int to_mdp_kms (struct msm_kms*) ;

void mdp5_irq_preinstall(struct msm_kms *kms)
{
 struct mdp5_kms *mdp5_kms = to_mdp5_kms(to_mdp_kms(kms));
 struct device *dev = &mdp5_kms->pdev->dev;

 pm_runtime_get_sync(dev);
 mdp5_write(mdp5_kms, REG_MDP5_INTR_CLEAR, 0xffffffff);
 mdp5_write(mdp5_kms, REG_MDP5_INTR_EN, 0x00000000);
 pm_runtime_put_sync(dev);
}
