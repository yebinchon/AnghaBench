
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int user_state; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef enum radeon_pm_state_type { ____Placeholder_radeon_pm_state_type } radeon_pm_state_type ;


 int PAGE_SIZE ;
 int POWER_STATE_TYPE_BALANCED ;
 int POWER_STATE_TYPE_BATTERY ;
 struct drm_device* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t radeon_get_dpm_state(struct device *dev,
        struct device_attribute *attr,
        char *buf)
{
 struct drm_device *ddev = dev_get_drvdata(dev);
 struct radeon_device *rdev = ddev->dev_private;
 enum radeon_pm_state_type pm = rdev->pm.dpm.user_state;

 return snprintf(buf, PAGE_SIZE, "%s\n",
   (pm == POWER_STATE_TYPE_BATTERY) ? "battery" :
   (pm == POWER_STATE_TYPE_BALANCED) ? "balanced" : "performance");
}
