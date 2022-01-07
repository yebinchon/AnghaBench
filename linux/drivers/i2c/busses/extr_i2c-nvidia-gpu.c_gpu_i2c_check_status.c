
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gpu_i2c_dev {scalar_t__ regs; int dev; } ;


 int ENXIO ;
 int ETIMEDOUT ;
 scalar_t__ I2C_MST_CNTL ;
 int I2C_MST_CNTL_CYCLE_TRIGGER ;
 int I2C_MST_CNTL_STATUS ;
 int I2C_MST_CNTL_STATUS_BUS_BUSY ;



 int dev_err (int ,char*,int) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int readl (scalar_t__) ;
 scalar_t__ time_is_after_jiffies (unsigned long) ;
 scalar_t__ time_is_before_jiffies (unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int gpu_i2c_check_status(struct gpu_i2c_dev *i2cd)
{
 unsigned long target = jiffies + msecs_to_jiffies(1000);
 u32 val;

 do {
  val = readl(i2cd->regs + I2C_MST_CNTL);
  if (!(val & I2C_MST_CNTL_CYCLE_TRIGGER))
   break;
  if ((val & I2C_MST_CNTL_STATUS) !=
    I2C_MST_CNTL_STATUS_BUS_BUSY)
   break;
  usleep_range(500, 600);
 } while (time_is_after_jiffies(target));

 if (time_is_before_jiffies(target)) {
  dev_err(i2cd->dev, "i2c timeout error %x\n", val);
  return -ETIMEDOUT;
 }

 val = readl(i2cd->regs + I2C_MST_CNTL);
 switch (val & I2C_MST_CNTL_STATUS) {
 case 129:
  return 0;
 case 130:
  return -ENXIO;
 case 128:
  return -ETIMEDOUT;
 default:
  return 0;
 }
}
