
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {struct amdgpu_device* dev_private; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int real_vram_size; } ;
struct amdgpu_device {TYPE_1__ gmc; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct drm_device* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t amdgpu_mem_info_vram_total_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct drm_device *ddev = dev_get_drvdata(dev);
 struct amdgpu_device *adev = ddev->dev_private;

 return snprintf(buf, PAGE_SIZE, "%llu\n", adev->gmc.real_vram_size);
}
