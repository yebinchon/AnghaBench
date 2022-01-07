
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_i2c_dev {int adapter; int dev; } ;


 int DW_IC_STATUS ;
 int DW_IC_STATUS_ACTIVITY ;
 int ETIMEDOUT ;
 int TIMEOUT ;
 int dev_warn (int ,char*) ;
 int dw_readl (struct dw_i2c_dev*,int ) ;
 int i2c_recover_bus (int *) ;
 int usleep_range (int,int) ;

int i2c_dw_wait_bus_not_busy(struct dw_i2c_dev *dev)
{
 int timeout = TIMEOUT;

 while (dw_readl(dev, DW_IC_STATUS) & DW_IC_STATUS_ACTIVITY) {
  if (timeout <= 0) {
   dev_warn(dev->dev, "timeout waiting for bus ready\n");
   i2c_recover_bus(&dev->adapter);

   if (dw_readl(dev, DW_IC_STATUS) & DW_IC_STATUS_ACTIVITY)
    return -ETIMEDOUT;
   return 0;
  }
  timeout--;
  usleep_range(1000, 1100);
 }

 return 0;
}
