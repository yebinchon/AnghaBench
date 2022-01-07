
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etnaviv_iommu_context {int refcount; } ;


 int kref_get (int *) ;

__attribute__((used)) static inline void etnaviv_iommu_context_get(struct etnaviv_iommu_context *ctx)
{
 kref_get(&ctx->refcount);
}
