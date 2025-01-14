
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32f7_i2c_dev {int dev; int adap; scalar_t__ base; } ;


 int EBUSY ;
 scalar_t__ STM32F7_I2C_ISR ;
 int STM32F7_I2C_ISR_BUSY ;
 int dev_err (int ,char*,int) ;
 int dev_info (int ,char*) ;
 int readl_relaxed_poll_timeout (scalar_t__,int,int,int,int) ;
 int stm32f7_i2c_release_bus (int *) ;

__attribute__((used)) static int stm32f7_i2c_wait_free_bus(struct stm32f7_i2c_dev *i2c_dev)
{
 u32 status;
 int ret;

 ret = readl_relaxed_poll_timeout(i2c_dev->base + STM32F7_I2C_ISR,
      status,
      !(status & STM32F7_I2C_ISR_BUSY),
      10, 1000);
 if (!ret)
  return 0;

 dev_info(i2c_dev->dev, "bus busy\n");

 ret = stm32f7_i2c_release_bus(&i2c_dev->adap);
 if (ret) {
  dev_err(i2c_dev->dev, "Failed to recover the bus (%d)\n", ret);
  return ret;
 }

 return -EBUSY;
}
