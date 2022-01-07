
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain_ops {int dummy; } ;
struct irq_domain {int dummy; } ;


 int ENODEV ;
 struct irq_domain* gic_domain ;
 int pr_err (char*) ;
 int pr_info (char*) ;
 struct irq_domain_ops const* vpe_domain_ops ;

int its_init_v4(struct irq_domain *domain, const struct irq_domain_ops *ops)
{
 if (domain) {
  pr_info("ITS: Enabling GICv4 support\n");
  gic_domain = domain;
  vpe_domain_ops = ops;
  return 0;
 }

 pr_err("ITS: No GICv4 VPE domain allocated\n");
 return -ENODEV;
}
