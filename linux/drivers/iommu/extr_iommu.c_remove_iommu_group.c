
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int iommu_release_device (struct device*) ;

__attribute__((used)) static int remove_iommu_group(struct device *dev, void *data)
{
 iommu_release_device(dev);

 return 0;
}
