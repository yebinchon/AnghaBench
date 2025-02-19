
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_gpio_sb {scalar_t__ nirq; } ;
struct irq_fwspec {int param_count; scalar_t__* param; } ;
struct irq_domain {struct xgene_gpio_sb* host_data; } ;


 int EINVAL ;

__attribute__((used)) static int xgene_gpio_sb_domain_translate(struct irq_domain *d,
  struct irq_fwspec *fwspec,
  unsigned long *hwirq,
  unsigned int *type)
{
 struct xgene_gpio_sb *priv = d->host_data;

 if ((fwspec->param_count != 2) ||
  (fwspec->param[0] >= priv->nirq))
  return -EINVAL;
 *hwirq = fwspec->param[0];
 *type = fwspec->param[1];
 return 0;
}
