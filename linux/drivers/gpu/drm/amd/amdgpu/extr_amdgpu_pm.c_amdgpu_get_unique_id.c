
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {struct amdgpu_device* dev_private; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct amdgpu_device {scalar_t__ unique_id; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct drm_device* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*,scalar_t__) ;

__attribute__((used)) static ssize_t amdgpu_get_unique_id(struct device *dev,
  struct device_attribute *attr,
  char *buf)
{
 struct drm_device *ddev = dev_get_drvdata(dev);
 struct amdgpu_device *adev = ddev->dev_private;

 if (adev->unique_id)
  return snprintf(buf, PAGE_SIZE, "%016llx\n", adev->unique_id);

 return 0;
}
