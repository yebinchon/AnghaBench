
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct etnaviv_pm_signal {int data; } ;
struct etnaviv_pm_domain {int profile_read; int profile_config; } ;
struct etnaviv_gpu {int dummy; } ;


 int gpu_read (struct etnaviv_gpu*,int ) ;
 int gpu_write (struct etnaviv_gpu*,int ,int ) ;

__attribute__((used)) static u32 perf_reg_read(struct etnaviv_gpu *gpu,
 const struct etnaviv_pm_domain *domain,
 const struct etnaviv_pm_signal *signal)
{
 gpu_write(gpu, domain->profile_config, signal->data);

 return gpu_read(gpu, domain->profile_read);
}
