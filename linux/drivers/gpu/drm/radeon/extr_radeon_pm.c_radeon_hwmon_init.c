
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int int_thermal_type; int int_hwmon_dev; } ;
struct radeon_device {int dev; TYPE_3__ pm; TYPE_2__* asic; } ;
struct TYPE_4__ {int * get_temperature; } ;
struct TYPE_5__ {TYPE_1__ pm; } ;


 int IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int ,char*,int) ;
 int hwmon_device_register_with_groups (int ,char*,struct radeon_device*,int ) ;
 int hwmon_groups ;

__attribute__((used)) static int radeon_hwmon_init(struct radeon_device *rdev)
{
 int err = 0;

 switch (rdev->pm.int_thermal_type) {
 case 131:
 case 130:
 case 134:
 case 132:
 case 128:
 case 129:
 case 135:
 case 133:
  if (rdev->asic->pm.get_temperature == ((void*)0))
   return err;
  rdev->pm.int_hwmon_dev = hwmon_device_register_with_groups(rdev->dev,
            "radeon", rdev,
            hwmon_groups);
  if (IS_ERR(rdev->pm.int_hwmon_dev)) {
   err = PTR_ERR(rdev->pm.int_hwmon_dev);
   dev_err(rdev->dev,
    "Unable to register hwmon device: %d\n", err);
  }
  break;
 default:
  break;
 }

 return err;
}
