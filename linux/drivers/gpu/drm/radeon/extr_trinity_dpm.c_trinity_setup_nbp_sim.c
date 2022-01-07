
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct trinity_ps {int DpmXNbPsHi; int DpmXNbPsLo; int Dpm0PgNbPsHi; int Dpm0PgNbPsLo; } ;
struct TYPE_2__ {scalar_t__ nb_dpm_enable; } ;
struct trinity_power_info {TYPE_1__ sys_info; } ;
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;


 int Dpm0PgNbPsHi (int ) ;
 int Dpm0PgNbPsHi_MASK ;
 int Dpm0PgNbPsLo (int ) ;
 int Dpm0PgNbPsLo_MASK ;
 int DpmXNbPsHi (int ) ;
 int DpmXNbPsHi_MASK ;
 int DpmXNbPsLo (int ) ;
 int DpmXNbPsLo_MASK ;
 int NB_PSTATE_CONFIG ;
 int RREG32_SMC (int ) ;
 int WREG32_SMC (int ,int) ;
 struct trinity_power_info* trinity_get_pi (struct radeon_device*) ;
 struct trinity_ps* trinity_get_ps (struct radeon_ps*) ;

__attribute__((used)) static void trinity_setup_nbp_sim(struct radeon_device *rdev,
      struct radeon_ps *rps)
{
 struct trinity_power_info *pi = trinity_get_pi(rdev);
 struct trinity_ps *new_ps = trinity_get_ps(rps);
 u32 nbpsconfig;

 if (pi->sys_info.nb_dpm_enable) {
  nbpsconfig = RREG32_SMC(NB_PSTATE_CONFIG);
  nbpsconfig &= ~(Dpm0PgNbPsLo_MASK | Dpm0PgNbPsHi_MASK | DpmXNbPsLo_MASK | DpmXNbPsHi_MASK);
  nbpsconfig |= (Dpm0PgNbPsLo(new_ps->Dpm0PgNbPsLo) |
          Dpm0PgNbPsHi(new_ps->Dpm0PgNbPsHi) |
          DpmXNbPsLo(new_ps->DpmXNbPsLo) |
          DpmXNbPsHi(new_ps->DpmXNbPsHi));
  WREG32_SMC(NB_PSTATE_CONFIG, nbpsconfig);
 }
}
