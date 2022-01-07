
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct irq_domain {int dummy; } ;
struct TYPE_6__ {struct irq_domain* domain; scalar_t__ enabled_mask; } ;
struct TYPE_5__ {TYPE_1__* dev; } ;
struct dpu_mdss {TYPE_3__ irq_controller; TYPE_2__ base; } ;
struct device {int of_node; } ;
struct TYPE_4__ {struct device* dev; } ;


 int DPU_ERROR (char*) ;
 int EINVAL ;
 int dpu_mdss_irqdomain_ops ;
 struct irq_domain* irq_domain_add_linear (int ,int,int *,struct dpu_mdss*) ;

__attribute__((used)) static int _dpu_mdss_irq_domain_add(struct dpu_mdss *dpu_mdss)
{
 struct device *dev;
 struct irq_domain *domain;

 dev = dpu_mdss->base.dev->dev;

 domain = irq_domain_add_linear(dev->of_node, 32,
   &dpu_mdss_irqdomain_ops, dpu_mdss);
 if (!domain) {
  DPU_ERROR("failed to add irq_domain\n");
  return -EINVAL;
 }

 dpu_mdss->irq_controller.enabled_mask = 0;
 dpu_mdss->irq_controller.domain = domain;

 return 0;
}
