
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_drm_private {int mdss; } ;
struct TYPE_2__ {int * domain; } ;
struct mdp5_mdss {int vdd; TYPE_1__ irqcontroller; } ;
struct drm_device {int dev; struct msm_drm_private* dev_private; } ;


 int irq_domain_remove (int *) ;
 int pm_runtime_disable (int ) ;
 int regulator_disable (int ) ;
 struct mdp5_mdss* to_mdp5_mdss (int ) ;

__attribute__((used)) static void mdp5_mdss_destroy(struct drm_device *dev)
{
 struct msm_drm_private *priv = dev->dev_private;
 struct mdp5_mdss *mdp5_mdss = to_mdp5_mdss(priv->mdss);

 if (!mdp5_mdss)
  return;

 irq_domain_remove(mdp5_mdss->irqcontroller.domain);
 mdp5_mdss->irqcontroller.domain = ((void*)0);

 regulator_disable(mdp5_mdss->vdd);

 pm_runtime_disable(dev->dev);
}
