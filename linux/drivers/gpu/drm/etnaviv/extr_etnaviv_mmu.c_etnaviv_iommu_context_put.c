
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etnaviv_iommu_context {int refcount; } ;


 int etnaviv_iommu_context_free ;
 int kref_put (int *,int ) ;

void etnaviv_iommu_context_put(struct etnaviv_iommu_context *context)
{
 kref_put(&context->refcount, etnaviv_iommu_context_free);
}
