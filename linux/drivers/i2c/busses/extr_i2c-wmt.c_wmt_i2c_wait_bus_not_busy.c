
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmt_i2c_dev {int dev; scalar_t__ base; } ;


 int CSR_READY_MASK ;
 int EBUSY ;
 scalar_t__ REG_CSR ;
 unsigned long WMT_I2C_TIMEOUT ;
 int dev_warn (int ,char*) ;
 unsigned long jiffies ;
 int msleep (int) ;
 int readw (scalar_t__) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int wmt_i2c_wait_bus_not_busy(struct wmt_i2c_dev *i2c_dev)
{
 unsigned long timeout;

 timeout = jiffies + WMT_I2C_TIMEOUT;
 while (!(readw(i2c_dev->base + REG_CSR) & CSR_READY_MASK)) {
  if (time_after(jiffies, timeout)) {
   dev_warn(i2c_dev->dev, "timeout waiting for bus ready\n");
   return -EBUSY;
  }
  msleep(20);
 }

 return 0;
}
