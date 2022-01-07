
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysinfo {scalar_t__ mem_unit; scalar_t__ totalhigh; scalar_t__ totalram; } ;


 int ENOENT ;
 int amdgpu_amdkfd_gpuvm_init_mem_limits () ;
 scalar_t__ amdgpu_amdkfd_total_mem_size ;
 int kgd2kfd_init () ;
 int si_meminfo (struct sysinfo*) ;

int amdgpu_amdkfd_init(void)
{
 struct sysinfo si;
 int ret;

 si_meminfo(&si);
 amdgpu_amdkfd_total_mem_size = si.totalram - si.totalhigh;
 amdgpu_amdkfd_total_mem_size *= si.mem_unit;





 ret = -ENOENT;


 return ret;
}
