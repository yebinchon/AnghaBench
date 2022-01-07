
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DRM_INFO (char*,char*,int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static void amdgpu_benchmark_log_results(int n, unsigned size,
      unsigned int time,
      unsigned sdomain, unsigned ddomain,
      char *kind)
{
 unsigned int throughput = (n * (size >> 10)) / time;
 DRM_INFO("amdgpu: %s %u bo moves of %u kB from"
   " %d to %d in %u ms, throughput: %u Mb/s or %u MB/s\n",
   kind, n, size >> 10, sdomain, ddomain, time,
   throughput * 8, throughput);
}
