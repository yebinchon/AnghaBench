
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_domain {int dummy; } ;


 int ENOMEM ;
 int SLAB_HWCACHE_ALIGN ;
 int iommu_domain_cache ;
 int kmem_cache_create (char*,int,int ,int ,int *) ;
 int pr_err (char*) ;

__attribute__((used)) static inline int iommu_domain_cache_init(void)
{
 int ret = 0;

 iommu_domain_cache = kmem_cache_create("iommu_domain",
      sizeof(struct dmar_domain),
      0,
      SLAB_HWCACHE_ALIGN,

      ((void*)0));
 if (!iommu_domain_cache) {
  pr_err("Couldn't create iommu_domain cache\n");
  ret = -ENOMEM;
 }

 return ret;
}
