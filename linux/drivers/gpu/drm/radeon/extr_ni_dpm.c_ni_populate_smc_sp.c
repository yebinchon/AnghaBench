
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rv7xx_power_info {int psp; int dsp; } ;
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;
struct ni_ps {int performance_level_count; } ;
struct TYPE_5__ {TYPE_1__* levels; } ;
struct TYPE_4__ {void* bSP; } ;
typedef TYPE_2__ NISLANDS_SMC_SWSTATE ;


 void* cpu_to_be32 (int ) ;
 struct ni_ps* ni_get_ps (struct radeon_ps*) ;
 struct rv7xx_power_info* rv770_get_pi (struct radeon_device*) ;

__attribute__((used)) static void ni_populate_smc_sp(struct radeon_device *rdev,
          struct radeon_ps *radeon_state,
          NISLANDS_SMC_SWSTATE *smc_state)
{
 struct ni_ps *ps = ni_get_ps(radeon_state);
 struct rv7xx_power_info *pi = rv770_get_pi(rdev);
 int i;

 for (i = 0; i < ps->performance_level_count - 1; i++)
  smc_state->levels[i].bSP = cpu_to_be32(pi->dsp);

 smc_state->levels[ps->performance_level_count - 1].bSP =
  cpu_to_be32(pi->psp);
}
