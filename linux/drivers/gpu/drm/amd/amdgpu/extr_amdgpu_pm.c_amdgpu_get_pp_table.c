
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_device {struct amdgpu_device* dev_private; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pp_funcs; } ;
struct amdgpu_device {TYPE_2__ powerplay; int smu; } ;
typedef int ssize_t ;
struct TYPE_3__ {scalar_t__ get_pp_table; } ;


 int PAGE_SIZE ;
 int amdgpu_dpm_get_pp_table (struct amdgpu_device*,char**) ;
 struct drm_device* dev_get_drvdata (struct device*) ;
 scalar_t__ is_support_sw_smu (struct amdgpu_device*) ;
 int memcpy (char*,char*,int) ;
 int smu_sys_get_pp_table (int *,void**) ;

__attribute__((used)) static ssize_t amdgpu_get_pp_table(struct device *dev,
  struct device_attribute *attr,
  char *buf)
{
 struct drm_device *ddev = dev_get_drvdata(dev);
 struct amdgpu_device *adev = ddev->dev_private;
 char *table = ((void*)0);
 int size;

 if (is_support_sw_smu(adev)) {
  size = smu_sys_get_pp_table(&adev->smu, (void **)&table);
  if (size < 0)
   return size;
 }
 else if (adev->powerplay.pp_funcs->get_pp_table)
  size = amdgpu_dpm_get_pp_table(adev, &table);
 else
  return 0;

 if (size >= PAGE_SIZE)
  size = PAGE_SIZE - 1;

 memcpy(buf, table, size);

 return size;
}
