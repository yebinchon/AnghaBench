
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {struct amdgpu_device* dev_private; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct amdgpu_device {scalar_t__* df_perfmon_config_assign_mask; } ;
typedef int ssize_t ;


 int DF_V3_6_MAX_COUNTERS ;
 int PAGE_SIZE ;
 struct drm_device* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t df_v3_6_get_df_cntr_avail(struct device *dev,
  struct device_attribute *attr,
  char *buf)
{
 struct amdgpu_device *adev;
 struct drm_device *ddev;
 int i, count;

 ddev = dev_get_drvdata(dev);
 adev = ddev->dev_private;
 count = 0;

 for (i = 0; i < DF_V3_6_MAX_COUNTERS; i++) {
  if (adev->df_perfmon_config_assign_mask[i] == 0)
   count++;
 }

 return snprintf(buf, PAGE_SIZE, "%i\n", count);
}
