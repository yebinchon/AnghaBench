
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int EPROBE_DEFER ;
 int _omap_iommu_add_device (struct device*) ;

__attribute__((used)) static int omap_iommu_add_device(struct device *dev)
{
 int ret;

 ret = _omap_iommu_add_device(dev);
 if (ret == -EPROBE_DEFER)
  return 0;

 return ret;
}
