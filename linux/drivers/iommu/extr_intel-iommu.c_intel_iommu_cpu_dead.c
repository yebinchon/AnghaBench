
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free_all_cpu_cached_iovas (unsigned int) ;

__attribute__((used)) static int intel_iommu_cpu_dead(unsigned int cpu)
{
 free_all_cpu_cached_iovas(cpu);
 return 0;
}
