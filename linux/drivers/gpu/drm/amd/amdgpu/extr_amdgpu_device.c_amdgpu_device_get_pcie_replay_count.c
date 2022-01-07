
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct amdgpu_device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int amdgpu_asic_get_pcie_replay_count (struct amdgpu_device*) ;
 struct drm_device* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t amdgpu_device_get_pcie_replay_count(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct drm_device *ddev = dev_get_drvdata(dev);
 struct amdgpu_device *adev = ddev->dev_private;
 uint64_t cnt = amdgpu_asic_get_pcie_replay_count(adev);

 return snprintf(buf, PAGE_SIZE, "%llu\n", cnt);
}
