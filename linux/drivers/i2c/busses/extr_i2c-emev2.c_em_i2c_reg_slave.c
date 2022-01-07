
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int flags; int addr; int adapter; } ;
struct em_i2c_device {scalar_t__ base; struct i2c_client* slave; } ;


 int EAFNOSUPPORT ;
 int EBUSY ;
 int I2C_CLIENT_TEN ;
 scalar_t__ I2C_OFS_SVA0 ;
 struct em_i2c_device* i2c_get_adapdata (int ) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static int em_i2c_reg_slave(struct i2c_client *slave)
{
 struct em_i2c_device *priv = i2c_get_adapdata(slave->adapter);

 if (priv->slave)
  return -EBUSY;

 if (slave->flags & I2C_CLIENT_TEN)
  return -EAFNOSUPPORT;

 priv->slave = slave;


 writeb(slave->addr << 1, priv->base + I2C_OFS_SVA0);

 return 0;
}
