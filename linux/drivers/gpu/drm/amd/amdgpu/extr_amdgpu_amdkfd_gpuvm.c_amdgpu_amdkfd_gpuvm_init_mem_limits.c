
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct sysinfo {int totalram; int totalhigh; int mem_unit; } ;
struct TYPE_2__ {int max_system_mem_limit; int max_ttm_mem_limit; int mem_limit_lock; } ;


 TYPE_1__ kfd_mem_limit ;
 int pr_debug (char*,int,int) ;
 int si_meminfo (struct sysinfo*) ;
 int spin_lock_init (int *) ;

void amdgpu_amdkfd_gpuvm_init_mem_limits(void)
{
 struct sysinfo si;
 uint64_t mem;

 si_meminfo(&si);
 mem = si.totalram - si.totalhigh;
 mem *= si.mem_unit;

 spin_lock_init(&kfd_mem_limit.mem_limit_lock);
 kfd_mem_limit.max_system_mem_limit = (mem >> 1) + (mem >> 2);
 kfd_mem_limit.max_ttm_mem_limit = (mem >> 1) - (mem >> 3);
 pr_debug("Kernel memory limit %lluM, TTM limit %lluM\n",
  (kfd_mem_limit.max_system_mem_limit >> 20),
  (kfd_mem_limit.max_ttm_mem_limit >> 20));
}
