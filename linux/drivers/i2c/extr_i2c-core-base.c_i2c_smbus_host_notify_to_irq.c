
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int flags; int addr; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int host_notify_domain; } ;


 int EINVAL ;
 int ENXIO ;
 int I2C_CLIENT_TEN ;
 unsigned int irq_create_mapping (int ,int ) ;

__attribute__((used)) static int i2c_smbus_host_notify_to_irq(const struct i2c_client *client)
{
 struct i2c_adapter *adap = client->adapter;
 unsigned int irq;

 if (!adap->host_notify_domain)
  return -ENXIO;

 if (client->flags & I2C_CLIENT_TEN)
  return -EINVAL;

 irq = irq_create_mapping(adap->host_notify_domain, client->addr);

 return irq > 0 ? irq : -ENXIO;
}
