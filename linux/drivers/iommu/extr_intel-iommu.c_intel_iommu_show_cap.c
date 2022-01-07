
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_iommu {int cap; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct intel_iommu* dev_to_intel_iommu (struct device*) ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static ssize_t intel_iommu_show_cap(struct device *dev,
        struct device_attribute *attr,
        char *buf)
{
 struct intel_iommu *iommu = dev_to_intel_iommu(dev);
 return sprintf(buf, "%llx\n", iommu->cap);
}
