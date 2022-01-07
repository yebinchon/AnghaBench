
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct radeon_device {TYPE_2__* asic; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {int (* fan_ctrl_set_mode ) (struct radeon_device*,int ) ;} ;
struct TYPE_4__ {TYPE_1__ dpm; } ;


 int EINVAL ;
 int FDO_PWM_MODE_STATIC ;
 struct radeon_device* dev_get_drvdata (struct device*) ;
 int kstrtoint (char const*,int,int*) ;
 int stub1 (struct radeon_device*,int ) ;
 int stub2 (struct radeon_device*,int ) ;

__attribute__((used)) static ssize_t radeon_hwmon_set_pwm1_enable(struct device *dev,
         struct device_attribute *attr,
         const char *buf,
         size_t count)
{
 struct radeon_device *rdev = dev_get_drvdata(dev);
 int err;
 int value;

 if(!rdev->asic->dpm.fan_ctrl_set_mode)
  return -EINVAL;

 err = kstrtoint(buf, 10, &value);
 if (err)
  return err;

 switch (value) {
 case 1:
  rdev->asic->dpm.fan_ctrl_set_mode(rdev, FDO_PWM_MODE_STATIC);
  break;
 default:
  rdev->asic->dpm.fan_ctrl_set_mode(rdev, 0);
  break;
 }

 return count;
}
