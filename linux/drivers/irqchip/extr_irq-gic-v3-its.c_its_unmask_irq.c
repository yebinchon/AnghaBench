
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int LPI_PROP_ENABLED ;
 scalar_t__ irqd_is_forwarded_to_vcpu (struct irq_data*) ;
 int its_vlpi_set_doorbell (struct irq_data*,int) ;
 int lpi_update_config (struct irq_data*,int ,int ) ;

__attribute__((used)) static void its_unmask_irq(struct irq_data *d)
{
 if (irqd_is_forwarded_to_vcpu(d))
  its_vlpi_set_doorbell(d, 1);

 lpi_update_config(d, 0, LPI_PROP_ENABLED);
}
