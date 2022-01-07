
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int x86_clflush_size; } ;


 int WARN_ON_ONCE (int) ;
 int X86_FEATURE_CLFLUSH ;
 TYPE_1__ boot_cpu_data ;
 int clflushopt (void*) ;
 int mb () ;
 int pr_err (char*) ;
 scalar_t__ static_cpu_has (int ) ;
 scalar_t__ wbinvd_on_all_cpus () ;

void
drm_clflush_virt_range(void *addr, unsigned long length)
{
 pr_err("Architecture has no drm_cache.c support\n");
 WARN_ON_ONCE(1);

}
