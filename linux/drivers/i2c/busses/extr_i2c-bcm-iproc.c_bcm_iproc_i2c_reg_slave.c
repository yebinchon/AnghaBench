
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int flags; int adapter; } ;
struct bcm_iproc_i2c_dev {struct i2c_client* slave; } ;


 int EAFNOSUPPORT ;
 int EBUSY ;
 int I2C_CLIENT_TEN ;
 int bcm_iproc_i2c_slave_init (struct bcm_iproc_i2c_dev*,int) ;
 struct bcm_iproc_i2c_dev* i2c_get_adapdata (int ) ;

__attribute__((used)) static int bcm_iproc_i2c_reg_slave(struct i2c_client *slave)
{
 struct bcm_iproc_i2c_dev *iproc_i2c = i2c_get_adapdata(slave->adapter);

 if (iproc_i2c->slave)
  return -EBUSY;

 if (slave->flags & I2C_CLIENT_TEN)
  return -EAFNOSUPPORT;

 iproc_i2c->slave = slave;
 bcm_iproc_i2c_slave_init(iproc_i2c, 0);
 return 0;
}
