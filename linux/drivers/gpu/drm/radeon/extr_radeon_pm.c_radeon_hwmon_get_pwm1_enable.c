
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct radeon_device {TYPE_2__* asic; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {scalar_t__ (* fan_ctrl_get_mode ) (struct radeon_device*) ;} ;
struct TYPE_4__ {TYPE_1__ dpm; } ;


 scalar_t__ FDO_PWM_MODE_STATIC ;
 struct radeon_device* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;
 scalar_t__ stub1 (struct radeon_device*) ;

__attribute__((used)) static ssize_t radeon_hwmon_get_pwm1_enable(struct device *dev,
         struct device_attribute *attr,
         char *buf)
{
 struct radeon_device *rdev = dev_get_drvdata(dev);
 u32 pwm_mode = 0;

 if (rdev->asic->dpm.fan_ctrl_get_mode)
  pwm_mode = rdev->asic->dpm.fan_ctrl_get_mode(rdev);


 return sprintf(buf, "%i\n", pwm_mode == FDO_PWM_MODE_STATIC ? 1 : 2);
}
