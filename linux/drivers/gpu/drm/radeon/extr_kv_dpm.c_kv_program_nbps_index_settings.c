
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct radeon_ps {int dummy; } ;
struct radeon_device {scalar_t__ family; } ;
struct kv_ps {int dpmx_nb_ps_hi; int dpmx_nb_ps_lo; int dpm0_pg_nb_ps_hi; int dpm0_pg_nb_ps_lo; } ;
struct TYPE_2__ {scalar_t__ nb_dpm_enable; } ;
struct kv_power_info {TYPE_1__ sys_info; } ;


 scalar_t__ CHIP_KABINI ;
 scalar_t__ CHIP_MULLINS ;
 int Dpm0PgNbPsHi (int ) ;
 int Dpm0PgNbPsHi_MASK ;
 int Dpm0PgNbPsLo (int ) ;
 int Dpm0PgNbPsLo_MASK ;
 int DpmXNbPsHi (int ) ;
 int DpmXNbPsHi_MASK ;
 int DpmXNbPsLo (int ) ;
 int DpmXNbPsLo_MASK ;
 int NB_DPM_CONFIG_1 ;
 int RREG32_SMC (int ) ;
 int WREG32_SMC (int ,int) ;
 struct kv_power_info* kv_get_pi (struct radeon_device*) ;
 struct kv_ps* kv_get_ps (struct radeon_ps*) ;

__attribute__((used)) static void kv_program_nbps_index_settings(struct radeon_device *rdev,
        struct radeon_ps *new_rps)
{
 struct kv_ps *new_ps = kv_get_ps(new_rps);
 struct kv_power_info *pi = kv_get_pi(rdev);
 u32 nbdpmconfig1;

 if (rdev->family == CHIP_KABINI || rdev->family == CHIP_MULLINS)
  return;

 if (pi->sys_info.nb_dpm_enable) {
  nbdpmconfig1 = RREG32_SMC(NB_DPM_CONFIG_1);
  nbdpmconfig1 &= ~(Dpm0PgNbPsLo_MASK | Dpm0PgNbPsHi_MASK |
      DpmXNbPsLo_MASK | DpmXNbPsHi_MASK);
  nbdpmconfig1 |= (Dpm0PgNbPsLo(new_ps->dpm0_pg_nb_ps_lo) |
     Dpm0PgNbPsHi(new_ps->dpm0_pg_nb_ps_hi) |
     DpmXNbPsLo(new_ps->dpmx_nb_ps_lo) |
     DpmXNbPsHi(new_ps->dpmx_nb_ps_hi));
  WREG32_SMC(NB_DPM_CONFIG_1, nbdpmconfig1);
 }
}
