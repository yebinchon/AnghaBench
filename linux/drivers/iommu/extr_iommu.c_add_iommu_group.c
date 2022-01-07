
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int ENODEV ;
 int iommu_probe_device (struct device*) ;

__attribute__((used)) static int add_iommu_group(struct device *dev, void *data)
{
 int ret = iommu_probe_device(dev);






 if (ret == -ENODEV)
  ret = 0;

 return ret;
}
