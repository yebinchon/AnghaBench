
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pp_funcs; } ;
struct amdgpu_device {TYPE_2__ powerplay; int smu; } ;
typedef int ssize_t ;
struct TYPE_3__ {scalar_t__ get_sclk_od; } ;


 int PAGE_SIZE ;
 int SMU_OD_SCLK ;
 int amdgpu_dpm_get_sclk_od (struct amdgpu_device*) ;
 struct drm_device* dev_get_drvdata (struct device*) ;
 scalar_t__ is_support_sw_smu (struct amdgpu_device*) ;
 int smu_get_od_percentage (int *,int ) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t amdgpu_get_pp_sclk_od(struct device *dev,
  struct device_attribute *attr,
  char *buf)
{
 struct drm_device *ddev = dev_get_drvdata(dev);
 struct amdgpu_device *adev = ddev->dev_private;
 uint32_t value = 0;

 if (is_support_sw_smu(adev))
  value = smu_get_od_percentage(&(adev->smu), SMU_OD_SCLK);
 else if (adev->powerplay.pp_funcs->get_sclk_od)
  value = amdgpu_dpm_get_sclk_od(adev);

 return snprintf(buf, PAGE_SIZE, "%d\n", value);
}
