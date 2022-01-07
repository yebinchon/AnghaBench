
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_domain {int dummy; } ;
struct TYPE_2__ {int fwnode; } ;
struct i2c_adapter {struct irq_domain* host_notify_domain; TYPE_1__ dev; } ;


 int ENOMEM ;
 int I2C_ADDR_7BITS_COUNT ;
 int I2C_FUNC_SMBUS_HOST_NOTIFY ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_host_notify_irq_ops ;
 struct irq_domain* irq_domain_create_linear (int ,int ,int *,struct i2c_adapter*) ;

__attribute__((used)) static int i2c_setup_host_notify_irq_domain(struct i2c_adapter *adap)
{
 struct irq_domain *domain;

 if (!i2c_check_functionality(adap, I2C_FUNC_SMBUS_HOST_NOTIFY))
  return 0;

 domain = irq_domain_create_linear(adap->dev.fwnode,
       I2C_ADDR_7BITS_COUNT,
       &i2c_host_notify_irq_ops, adap);
 if (!domain)
  return -ENOMEM;

 adap->host_notify_domain = domain;

 return 0;
}
