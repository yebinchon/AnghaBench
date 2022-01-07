
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct etnaviv_pm_signal {int dummy; } ;
struct etnaviv_pm_domain {int dummy; } ;
struct TYPE_2__ {scalar_t__ model; } ;
struct etnaviv_gpu {TYPE_1__ identity; } ;


 int VIVS_HI_PROFILE_IDLE_CYCLES ;
 int VIVS_HI_PROFILE_TOTAL_CYCLES ;
 scalar_t__ chipModel_GC2000 ;
 scalar_t__ chipModel_GC2100 ;
 scalar_t__ chipModel_GC880 ;
 int gpu_read (struct etnaviv_gpu*,int ) ;

__attribute__((used)) static u32 hi_total_idle_cycle_read(struct etnaviv_gpu *gpu,
 const struct etnaviv_pm_domain *domain,
 const struct etnaviv_pm_signal *signal)
{
 u32 reg = VIVS_HI_PROFILE_IDLE_CYCLES;

 if (gpu->identity.model == chipModel_GC880 ||
  gpu->identity.model == chipModel_GC2000 ||
  gpu->identity.model == chipModel_GC2100)
  reg = VIVS_HI_PROFILE_TOTAL_CYCLES;

 return gpu_read(gpu, reg);
}
