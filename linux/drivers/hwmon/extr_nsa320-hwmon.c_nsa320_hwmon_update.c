
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nsa320_hwmon {int mcu_data; int update_lock; scalar_t__ last_updated; int act; int data; int clk; } ;
struct device {int dummy; } ;
typedef int s32 ;


 int BIT (int) ;
 int EIO ;
 scalar_t__ HZ ;
 int MAGIC_NUMBER ;
 int dev_dbg (struct device*,char*,int) ;
 struct nsa320_hwmon* dev_get_drvdata (struct device*) ;
 scalar_t__ gpiod_get_value (int ) ;
 int gpiod_set_value (int ,int) ;
 scalar_t__ jiffies ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 int usleep_range (int,int) ;

__attribute__((used)) static s32 nsa320_hwmon_update(struct device *dev)
{
 u32 mcu_data;
 u32 mask;
 struct nsa320_hwmon *hwmon = dev_get_drvdata(dev);

 mutex_lock(&hwmon->update_lock);

 mcu_data = hwmon->mcu_data;

 if (time_after(jiffies, hwmon->last_updated + HZ) || mcu_data == 0) {
  gpiod_set_value(hwmon->act, 1);
  msleep(100);

  mcu_data = 0;
  for (mask = BIT(31); mask; mask >>= 1) {
   gpiod_set_value(hwmon->clk, 0);
   usleep_range(100, 200);
   gpiod_set_value(hwmon->clk, 1);
   usleep_range(100, 200);
   if (gpiod_get_value(hwmon->data))
    mcu_data |= mask;
  }

  gpiod_set_value(hwmon->act, 0);
  dev_dbg(dev, "Read raw MCU data %08x\n", mcu_data);

  if ((mcu_data >> 24) != MAGIC_NUMBER) {
   dev_dbg(dev, "Read invalid MCU data %08x\n", mcu_data);
   mcu_data = -EIO;
  } else {
   hwmon->mcu_data = mcu_data;
   hwmon->last_updated = jiffies;
  }
 }

 mutex_unlock(&hwmon->update_lock);

 return mcu_data;
}
