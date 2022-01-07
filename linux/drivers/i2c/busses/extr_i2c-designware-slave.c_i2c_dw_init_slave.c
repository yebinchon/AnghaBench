
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_i2c_dev {scalar_t__ sda_hold_time; } ;


 int DW_IC_SDA_HOLD ;
 int __i2c_dw_disable (struct dw_i2c_dev*) ;
 int dw_writel (struct dw_i2c_dev*,scalar_t__,int ) ;
 int i2c_dw_acquire_lock (struct dw_i2c_dev*) ;
 int i2c_dw_configure_fifo_slave (struct dw_i2c_dev*) ;
 int i2c_dw_release_lock (struct dw_i2c_dev*) ;

__attribute__((used)) static int i2c_dw_init_slave(struct dw_i2c_dev *dev)
{
 int ret;

 ret = i2c_dw_acquire_lock(dev);
 if (ret)
  return ret;


 __i2c_dw_disable(dev);


 if (dev->sda_hold_time)
  dw_writel(dev, dev->sda_hold_time, DW_IC_SDA_HOLD);

 i2c_dw_configure_fifo_slave(dev);
 i2c_dw_release_lock(dev);

 return 0;
}
