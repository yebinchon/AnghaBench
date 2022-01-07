
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int host_notify_domain; } ;


 int EINVAL ;
 int ENXIO ;
 int generic_handle_irq (int) ;
 int irq_find_mapping (int ,unsigned short) ;

int i2c_handle_smbus_host_notify(struct i2c_adapter *adap, unsigned short addr)
{
 int irq;

 if (!adap)
  return -EINVAL;

 irq = irq_find_mapping(adap->host_notify_domain, addr);
 if (irq <= 0)
  return -ENXIO;

 generic_handle_irq(irq);

 return 0;
}
