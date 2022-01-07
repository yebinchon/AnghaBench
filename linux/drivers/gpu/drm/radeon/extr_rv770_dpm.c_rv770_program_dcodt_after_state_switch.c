
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mclk; } ;
struct rv7xx_ps {TYPE_1__ high; } ;
struct rv7xx_power_info {scalar_t__ mclk_odt_threshold; } ;
struct radeon_ps {int dummy; } ;
struct radeon_device {scalar_t__ family; } ;


 scalar_t__ CHIP_RV710 ;
 scalar_t__ CHIP_RV730 ;
 int rv730_program_dcodt (struct radeon_device*,int) ;
 struct rv7xx_power_info* rv770_get_pi (struct radeon_device*) ;
 struct rv7xx_ps* rv770_get_ps (struct radeon_ps*) ;

__attribute__((used)) static void rv770_program_dcodt_after_state_switch(struct radeon_device *rdev,
         struct radeon_ps *radeon_new_state,
         struct radeon_ps *radeon_current_state)
{
 struct rv7xx_power_info *pi = rv770_get_pi(rdev);
 struct rv7xx_ps *new_state = rv770_get_ps(radeon_new_state);
 struct rv7xx_ps *current_state = rv770_get_ps(radeon_current_state);
 bool current_use_dc = 0;
 bool new_use_dc = 0;

 if (pi->mclk_odt_threshold == 0)
  return;

 if (current_state->high.mclk <= pi->mclk_odt_threshold)
  current_use_dc = 1;

 if (new_state->high.mclk <= pi->mclk_odt_threshold)
  new_use_dc = 1;

 if (current_use_dc == new_use_dc)
  return;

 if (current_use_dc && !new_use_dc)
  return;

 if ((rdev->family == CHIP_RV730) || (rdev->family == CHIP_RV710))
  rv730_program_dcodt(rdev, new_use_dc);
}
