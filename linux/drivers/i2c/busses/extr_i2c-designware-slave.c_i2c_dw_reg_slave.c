
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int flags; int addr; int adapter; } ;
struct dw_i2c_dev {scalar_t__ rx_outstanding; scalar_t__ abort_source; int status; scalar_t__ msg_err; scalar_t__ msg_read_idx; scalar_t__ msg_write_idx; scalar_t__ cmd_err; struct i2c_client* slave; int dev; } ;


 int DW_IC_SAR ;
 int EAFNOSUPPORT ;
 int EBUSY ;
 int I2C_CLIENT_TEN ;
 int STATUS_IDLE ;
 int __i2c_dw_disable_nowait (struct dw_i2c_dev*) ;
 int __i2c_dw_enable (struct dw_i2c_dev*) ;
 int dw_writel (struct dw_i2c_dev*,int ,int ) ;
 struct dw_i2c_dev* i2c_get_adapdata (int ) ;
 int pm_runtime_get_sync (int ) ;

__attribute__((used)) static int i2c_dw_reg_slave(struct i2c_client *slave)
{
 struct dw_i2c_dev *dev = i2c_get_adapdata(slave->adapter);

 if (dev->slave)
  return -EBUSY;
 if (slave->flags & I2C_CLIENT_TEN)
  return -EAFNOSUPPORT;
 pm_runtime_get_sync(dev->dev);





 __i2c_dw_disable_nowait(dev);
 dw_writel(dev, slave->addr, DW_IC_SAR);
 dev->slave = slave;

 __i2c_dw_enable(dev);

 dev->cmd_err = 0;
 dev->msg_write_idx = 0;
 dev->msg_read_idx = 0;
 dev->msg_err = 0;
 dev->status = STATUS_IDLE;
 dev->abort_source = 0;
 dev->rx_outstanding = 0;

 return 0;
}
