
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_domain {int dummy; } ;
struct device {int dummy; } ;


 int __iommu_attach_device (struct iommu_domain*,struct device*) ;

__attribute__((used)) static int iommu_group_do_attach_device(struct device *dev, void *data)
{
 struct iommu_domain *domain = data;

 return __iommu_attach_device(domain, dev);
}
