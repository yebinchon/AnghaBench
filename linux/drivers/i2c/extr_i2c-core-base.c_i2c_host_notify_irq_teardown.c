
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
struct i2c_adapter {struct irq_domain* host_notify_domain; } ;
typedef scalar_t__ irq_hw_number_t ;


 scalar_t__ I2C_ADDR_7BITS_COUNT ;
 int irq_dispose_mapping (int ) ;
 int irq_domain_remove (struct irq_domain*) ;
 int irq_find_mapping (struct irq_domain*,scalar_t__) ;

__attribute__((used)) static void i2c_host_notify_irq_teardown(struct i2c_adapter *adap)
{
 struct irq_domain *domain = adap->host_notify_domain;
 irq_hw_number_t hwirq;

 if (!domain)
  return;

 for (hwirq = 0 ; hwirq < I2C_ADDR_7BITS_COUNT ; hwirq++)
  irq_dispose_mapping(irq_find_mapping(domain, hwirq));

 irq_domain_remove(domain);
 adap->host_notify_domain = ((void*)0);
}
