
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_iommu {scalar_t__ reg; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int DMAR_VER_MAJOR (int ) ;
 int DMAR_VER_MINOR (int ) ;
 scalar_t__ DMAR_VER_REG ;
 struct intel_iommu* dev_to_intel_iommu (struct device*) ;
 int readl (scalar_t__) ;
 int sprintf (char*,char*,int,int) ;

__attribute__((used)) static ssize_t intel_iommu_show_version(struct device *dev,
     struct device_attribute *attr,
     char *buf)
{
 struct intel_iommu *iommu = dev_to_intel_iommu(dev);
 u32 ver = readl(iommu->reg + DMAR_VER_REG);
 return sprintf(buf, "%d:%d\n",
         DMAR_VER_MAJOR(ver), DMAR_VER_MINOR(ver));
}
