
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
struct irq_data {int dummy; } ;


 int intel_ir_reconfigure_irte (struct irq_data*,int) ;

__attribute__((used)) static int intel_irq_remapping_activate(struct irq_domain *domain,
     struct irq_data *irq_data, bool reserve)
{
 intel_ir_reconfigure_irte(irq_data, 1);
 return 0;
}
