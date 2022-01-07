
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rk_iommudata {struct rk_iommu* iommu; } ;
struct rk_iommu {int dummy; } ;
struct TYPE_2__ {struct rk_iommudata* iommu; } ;
struct device {TYPE_1__ archdata; } ;



__attribute__((used)) static struct rk_iommu *rk_iommu_from_dev(struct device *dev)
{
 struct rk_iommudata *data = dev->archdata.iommu;

 return data ? data->iommu : ((void*)0);
}
