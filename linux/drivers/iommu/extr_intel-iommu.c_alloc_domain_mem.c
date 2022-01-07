
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_ATOMIC ;
 int iommu_domain_cache ;
 void* kmem_cache_alloc (int ,int ) ;

__attribute__((used)) static inline void *alloc_domain_mem(void)
{
 return kmem_cache_alloc(iommu_domain_cache, GFP_ATOMIC);
}
