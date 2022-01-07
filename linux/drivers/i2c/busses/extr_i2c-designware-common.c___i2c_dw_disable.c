
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_i2c_dev {int dev; } ;


 int DW_IC_ENABLE_STATUS ;
 int __i2c_dw_disable_nowait (struct dw_i2c_dev*) ;
 int dev_warn (int ,char*) ;
 int dw_readl (struct dw_i2c_dev*,int ) ;
 int usleep_range (int,int) ;

void __i2c_dw_disable(struct dw_i2c_dev *dev)
{
 int timeout = 100;

 do {
  __i2c_dw_disable_nowait(dev);




  if ((dw_readl(dev, DW_IC_ENABLE_STATUS) & 1) == 0)
   return;






  usleep_range(25, 250);
 } while (timeout--);

 dev_warn(dev->dev, "timeout in disabling adapter\n");
}
