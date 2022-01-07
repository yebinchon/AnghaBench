
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct st_sensors_platform_data {int drdy_int_pin; } ;
struct st_lsm6dsx_hw {struct device* dev; TYPE_1__* settings; } ;
struct device {scalar_t__ platform_data; } ;
struct TYPE_2__ {int int2_addr; int int1_addr; } ;


 int EINVAL ;
 int dev_err (struct device*,char*) ;
 scalar_t__ st_lsm6dsx_of_get_drdy_pin (struct st_lsm6dsx_hw*,int*) ;

__attribute__((used)) static int st_lsm6dsx_get_drdy_reg(struct st_lsm6dsx_hw *hw, u8 *drdy_reg)
{
 int err = 0, drdy_pin;

 if (st_lsm6dsx_of_get_drdy_pin(hw, &drdy_pin) < 0) {
  struct st_sensors_platform_data *pdata;
  struct device *dev = hw->dev;

  pdata = (struct st_sensors_platform_data *)dev->platform_data;
  drdy_pin = pdata ? pdata->drdy_int_pin : 1;
 }

 switch (drdy_pin) {
 case 1:
  *drdy_reg = hw->settings->int1_addr;
  break;
 case 2:
  *drdy_reg = hw->settings->int2_addr;
  break;
 default:
  dev_err(hw->dev, "unsupported data ready pin\n");
  err = -EINVAL;
  break;
 }

 return err;
}
