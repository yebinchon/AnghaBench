
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct iommu_ops {int (* put_resv_regions ) (struct device*,struct list_head*) ;} ;
struct device {TYPE_1__* bus; } ;
struct TYPE_2__ {struct iommu_ops* iommu_ops; } ;


 int stub1 (struct device*,struct list_head*) ;

void iommu_put_resv_regions(struct device *dev, struct list_head *list)
{
 const struct iommu_ops *ops = dev->bus->iommu_ops;

 if (ops && ops->put_resv_regions)
  ops->put_resv_regions(dev, list);
}
