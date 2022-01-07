
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {struct amdgpu_device* dev_private; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct amdgpu_device {scalar_t__ pp_force_state_enabled; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int amdgpu_get_pp_cur_state (struct device*,struct device_attribute*,char*) ;
 struct drm_device* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*) ;

__attribute__((used)) static ssize_t amdgpu_get_pp_force_state(struct device *dev,
  struct device_attribute *attr,
  char *buf)
{
 struct drm_device *ddev = dev_get_drvdata(dev);
 struct amdgpu_device *adev = ddev->dev_private;

 if (adev->pp_force_state_enabled)
  return amdgpu_get_pp_cur_state(dev, attr, buf);
 else
  return snprintf(buf, PAGE_SIZE, "\n");
}
