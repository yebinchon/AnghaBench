
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int iommu_devinfo_cache ;
 int kmem_cache_free (int ,void*) ;

__attribute__((used)) static inline void free_devinfo_mem(void *vaddr)
{
 kmem_cache_free(iommu_devinfo_cache, vaddr);
}
