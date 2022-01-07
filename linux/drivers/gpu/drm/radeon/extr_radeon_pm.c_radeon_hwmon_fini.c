
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ int_hwmon_dev; } ;
struct radeon_device {TYPE_1__ pm; } ;


 int hwmon_device_unregister (scalar_t__) ;

__attribute__((used)) static void radeon_hwmon_fini(struct radeon_device *rdev)
{
 if (rdev->pm.int_hwmon_dev)
  hwmon_device_unregister(rdev->pm.int_hwmon_dev);
}
