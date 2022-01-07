
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_sva_ops {int dummy; } ;
struct iommu_sva {struct iommu_sva_ops const* ops; } ;


 int EEXIST ;

int iommu_sva_set_ops(struct iommu_sva *handle,
        const struct iommu_sva_ops *sva_ops)
{
 if (handle->ops && handle->ops != sva_ops)
  return -EEXIST;

 handle->ops = sva_ops;
 return 0;
}
