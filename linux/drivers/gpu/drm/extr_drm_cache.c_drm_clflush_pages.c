
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 scalar_t__ PAGE_SIZE ;
 int WARN_ON_ONCE (int) ;
 int X86_FEATURE_CLFLUSH ;
 int drm_cache_flush_clflush (struct page**,unsigned long) ;
 int flush_dcache_range (unsigned long,scalar_t__) ;
 void* kmap_atomic (struct page*) ;
 int kunmap_atomic (void*) ;
 int pr_err (char*) ;
 scalar_t__ static_cpu_has (int ) ;
 scalar_t__ unlikely (int ) ;
 scalar_t__ wbinvd_on_all_cpus () ;

void
drm_clflush_pages(struct page *pages[], unsigned long num_pages)
{
 pr_err("Architecture has no drm_cache.c support\n");
 WARN_ON_ONCE(1);

}
