
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct amdgpu_device {int pdev; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int amdgpu_asic_get_pcie_usage (struct amdgpu_device*,int *,int *) ;
 struct drm_device* dev_get_drvdata (struct device*) ;
 int pcie_get_mps (int ) ;
 int snprintf (char*,int ,char*,int ,int ,int ) ;

__attribute__((used)) static ssize_t amdgpu_get_pcie_bw(struct device *dev,
  struct device_attribute *attr,
  char *buf)
{
 struct drm_device *ddev = dev_get_drvdata(dev);
 struct amdgpu_device *adev = ddev->dev_private;
 uint64_t count0, count1;

 amdgpu_asic_get_pcie_usage(adev, &count0, &count1);
 return snprintf(buf, PAGE_SIZE, "%llu %llu %i\n",
   count0, count1, pcie_get_mps(adev->pdev));
}
