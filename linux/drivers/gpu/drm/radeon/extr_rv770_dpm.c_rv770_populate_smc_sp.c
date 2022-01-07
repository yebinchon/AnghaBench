
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rv7xx_power_info {int psp; int dsp; } ;
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;
struct TYPE_5__ {TYPE_1__* levels; } ;
struct TYPE_4__ {void* bSP; } ;
typedef TYPE_2__ RV770_SMC_SWSTATE ;


 int RV770_SMC_PERFORMANCE_LEVELS_PER_SWSTATE ;
 void* cpu_to_be32 (int ) ;
 struct rv7xx_power_info* rv770_get_pi (struct radeon_device*) ;

int rv770_populate_smc_sp(struct radeon_device *rdev,
     struct radeon_ps *radeon_state,
     RV770_SMC_SWSTATE *smc_state)
{
 struct rv7xx_power_info *pi = rv770_get_pi(rdev);
 int i;

 for (i = 0; i < (RV770_SMC_PERFORMANCE_LEVELS_PER_SWSTATE - 1); i++)
  smc_state->levels[i].bSP = cpu_to_be32(pi->dsp);

 smc_state->levels[RV770_SMC_PERFORMANCE_LEVELS_PER_SWSTATE - 1].bSP =
  cpu_to_be32(pi->psp);

 return 0;
}
