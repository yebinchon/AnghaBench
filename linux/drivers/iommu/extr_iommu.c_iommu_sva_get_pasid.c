
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iommu_sva {TYPE_2__* dev; } ;
struct iommu_ops {int (* sva_get_pasid ) (struct iommu_sva*) ;} ;
struct TYPE_4__ {TYPE_1__* bus; } ;
struct TYPE_3__ {struct iommu_ops* iommu_ops; } ;


 int IOMMU_PASID_INVALID ;
 int stub1 (struct iommu_sva*) ;

int iommu_sva_get_pasid(struct iommu_sva *handle)
{
 const struct iommu_ops *ops = handle->dev->bus->iommu_ops;

 if (!ops || !ops->sva_get_pasid)
  return IOMMU_PASID_INVALID;

 return ops->sva_get_pasid(handle);
}
