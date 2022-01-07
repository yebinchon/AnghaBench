
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int pp_handle; TYPE_1__* pp_funcs; } ;
struct amdgpu_device {TYPE_2__ powerplay; int smu; } ;
typedef int ssize_t ;
struct TYPE_3__ {int (* get_power_limit ) (int ,int*,int) ;} ;


 int PAGE_SIZE ;
 struct amdgpu_device* dev_get_drvdata (struct device*) ;
 scalar_t__ is_support_sw_smu (struct amdgpu_device*) ;
 int smu_get_power_limit (int *,int*,int) ;
 int snprintf (char*,int ,char*,...) ;
 int stub1 (int ,int*,int) ;

__attribute__((used)) static ssize_t amdgpu_hwmon_show_power_cap_max(struct device *dev,
      struct device_attribute *attr,
      char *buf)
{
 struct amdgpu_device *adev = dev_get_drvdata(dev);
 uint32_t limit = 0;

 if (is_support_sw_smu(adev)) {
  smu_get_power_limit(&adev->smu, &limit, 1);
  return snprintf(buf, PAGE_SIZE, "%u\n", limit * 1000000);
 } else if (adev->powerplay.pp_funcs && adev->powerplay.pp_funcs->get_power_limit) {
  adev->powerplay.pp_funcs->get_power_limit(adev->powerplay.pp_handle, &limit, 1);
  return snprintf(buf, PAGE_SIZE, "%u\n", limit * 1000000);
 } else {
  return snprintf(buf, PAGE_SIZE, "\n");
 }
}
