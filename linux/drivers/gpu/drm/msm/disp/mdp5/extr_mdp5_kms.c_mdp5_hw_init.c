
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_kms {int dummy; } ;
struct mdp5_kms {int ctlm; int resource_lock; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int REG_MDP5_DISP_INTF_SEL ;
 int mdp5_ctlm_hw_reset (int ) ;
 int mdp5_write (struct mdp5_kms*,int ,int ) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct mdp5_kms* to_mdp5_kms (int ) ;
 int to_mdp_kms (struct msm_kms*) ;

__attribute__((used)) static int mdp5_hw_init(struct msm_kms *kms)
{
 struct mdp5_kms *mdp5_kms = to_mdp5_kms(to_mdp_kms(kms));
 struct device *dev = &mdp5_kms->pdev->dev;
 unsigned long flags;

 pm_runtime_get_sync(dev);
 spin_lock_irqsave(&mdp5_kms->resource_lock, flags);
 mdp5_write(mdp5_kms, REG_MDP5_DISP_INTF_SEL, 0);
 spin_unlock_irqrestore(&mdp5_kms->resource_lock, flags);

 mdp5_ctlm_hw_reset(mdp5_kms->ctlm);

 pm_runtime_put_sync(dev);

 return 0;
}
