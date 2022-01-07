
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_9__ ;
typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_15__ ;
typedef struct TYPE_20__ TYPE_14__ ;
typedef struct TYPE_19__ TYPE_13__ ;
typedef struct TYPE_18__ TYPE_12__ ;
typedef struct TYPE_17__ TYPE_11__ ;
typedef struct TYPE_16__ TYPE_10__ ;


typedef int umode_t ;
struct TYPE_24__ {scalar_t__ pm_method; scalar_t__ no_fan; } ;
struct radeon_device {TYPE_7__* asic; TYPE_3__ pm; } ;
struct kobject {int dummy; } ;
struct device {int dummy; } ;
struct attribute {int mode; } ;
struct TYPE_30__ {struct attribute attr; } ;
struct TYPE_29__ {struct attribute attr; } ;
struct TYPE_27__ {int get_fan_speed_percent; int set_fan_speed_percent; int fan_ctrl_set_mode; int fan_ctrl_get_mode; } ;
struct TYPE_28__ {TYPE_6__ dpm; } ;
struct TYPE_26__ {struct attribute attr; } ;
struct TYPE_25__ {struct attribute attr; } ;
struct TYPE_23__ {struct attribute attr; } ;
struct TYPE_22__ {struct attribute attr; } ;
struct TYPE_21__ {TYPE_4__ dev_attr; } ;
struct TYPE_20__ {TYPE_5__ dev_attr; } ;
struct TYPE_19__ {TYPE_8__ dev_attr; } ;
struct TYPE_18__ {TYPE_9__ dev_attr; } ;
struct TYPE_17__ {TYPE_1__ dev_attr; } ;
struct TYPE_16__ {TYPE_2__ dev_attr; } ;


 scalar_t__ PM_METHOD_DPM ;
 int S_IRUGO ;
 int S_IWUSR ;
 struct radeon_device* dev_get_drvdata (struct device*) ;
 struct device* kobj_to_dev (struct kobject*) ;
 TYPE_15__ sensor_dev_attr_pwm1 ;
 TYPE_14__ sensor_dev_attr_pwm1_enable ;
 TYPE_13__ sensor_dev_attr_pwm1_max ;
 TYPE_12__ sensor_dev_attr_pwm1_min ;
 TYPE_11__ sensor_dev_attr_temp1_crit ;
 TYPE_10__ sensor_dev_attr_temp1_crit_hyst ;

__attribute__((used)) static umode_t hwmon_attributes_visible(struct kobject *kobj,
     struct attribute *attr, int index)
{
 struct device *dev = kobj_to_dev(kobj);
 struct radeon_device *rdev = dev_get_drvdata(dev);
 umode_t effective_mode = attr->mode;


 if (rdev->pm.pm_method != PM_METHOD_DPM &&
     (attr == &sensor_dev_attr_temp1_crit.dev_attr.attr ||
      attr == &sensor_dev_attr_temp1_crit_hyst.dev_attr.attr ||
      attr == &sensor_dev_attr_pwm1.dev_attr.attr ||
      attr == &sensor_dev_attr_pwm1_enable.dev_attr.attr ||
      attr == &sensor_dev_attr_pwm1_max.dev_attr.attr ||
      attr == &sensor_dev_attr_pwm1_min.dev_attr.attr))
  return 0;


 if (rdev->pm.no_fan &&
     (attr == &sensor_dev_attr_pwm1.dev_attr.attr ||
      attr == &sensor_dev_attr_pwm1_enable.dev_attr.attr ||
      attr == &sensor_dev_attr_pwm1_max.dev_attr.attr ||
      attr == &sensor_dev_attr_pwm1_min.dev_attr.attr))
  return 0;


 if ((!rdev->asic->dpm.get_fan_speed_percent &&
      attr == &sensor_dev_attr_pwm1.dev_attr.attr) ||
     (!rdev->asic->dpm.fan_ctrl_get_mode &&
      attr == &sensor_dev_attr_pwm1_enable.dev_attr.attr))
  effective_mode &= ~S_IRUGO;

 if ((!rdev->asic->dpm.set_fan_speed_percent &&
      attr == &sensor_dev_attr_pwm1.dev_attr.attr) ||
     (!rdev->asic->dpm.fan_ctrl_set_mode &&
      attr == &sensor_dev_attr_pwm1_enable.dev_attr.attr))
  effective_mode &= ~S_IWUSR;


 if ((!rdev->asic->dpm.set_fan_speed_percent &&
      !rdev->asic->dpm.get_fan_speed_percent) &&
     (attr == &sensor_dev_attr_pwm1_max.dev_attr.attr ||
      attr == &sensor_dev_attr_pwm1_min.dev_attr.attr))
  return 0;

 return effective_mode;
}
