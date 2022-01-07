
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_domain_info {int dummy; } ;


 int ENOMEM ;
 int SLAB_HWCACHE_ALIGN ;
 int iommu_devinfo_cache ;
 int kmem_cache_create (char*,int,int ,int ,int *) ;
 int pr_err (char*) ;

__attribute__((used)) static inline int iommu_devinfo_cache_init(void)
{
 int ret = 0;

 iommu_devinfo_cache = kmem_cache_create("iommu_devinfo",
      sizeof(struct device_domain_info),
      0,
      SLAB_HWCACHE_ALIGN,
      ((void*)0));
 if (!iommu_devinfo_cache) {
  pr_err("Couldn't create devinfo cache\n");
  ret = -ENOMEM;
 }

 return ret;
}
