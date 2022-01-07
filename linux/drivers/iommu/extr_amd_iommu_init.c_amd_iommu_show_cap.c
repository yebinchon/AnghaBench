
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct amd_iommu {int cap; } ;
typedef int ssize_t ;


 struct amd_iommu* dev_to_amd_iommu (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t amd_iommu_show_cap(struct device *dev,
      struct device_attribute *attr,
      char *buf)
{
 struct amd_iommu *iommu = dev_to_amd_iommu(dev);
 return sprintf(buf, "%x\n", iommu->cap);
}
