
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {struct irq_domain* domain; scalar_t__ enabled_mask; } ;
struct TYPE_5__ {TYPE_1__* dev; } ;
struct mdp5_mdss {TYPE_3__ irqcontroller; TYPE_2__ base; } ;
struct irq_domain {int dummy; } ;
struct device {int of_node; } ;
struct TYPE_4__ {struct device* dev; } ;


 int DRM_DEV_ERROR (struct device*,char*) ;
 int ENXIO ;
 struct irq_domain* irq_domain_add_linear (int ,int,int *,struct mdp5_mdss*) ;
 int mdss_hw_irqdomain_ops ;

__attribute__((used)) static int mdss_irq_domain_init(struct mdp5_mdss *mdp5_mdss)
{
 struct device *dev = mdp5_mdss->base.dev->dev;
 struct irq_domain *d;

 d = irq_domain_add_linear(dev->of_node, 32, &mdss_hw_irqdomain_ops,
      mdp5_mdss);
 if (!d) {
  DRM_DEV_ERROR(dev, "mdss irq domain add failed\n");
  return -ENXIO;
 }

 mdp5_mdss->irqcontroller.enabled_mask = 0;
 mdp5_mdss->irqcontroller.domain = d;

 return 0;
}
