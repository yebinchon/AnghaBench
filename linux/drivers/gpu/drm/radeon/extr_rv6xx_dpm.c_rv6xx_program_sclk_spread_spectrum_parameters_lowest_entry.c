
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * sclks; } ;
struct rv6xx_power_info {TYPE_1__ hw; } ;
struct radeon_device {int dummy; } ;


 size_t R600_POWER_LEVEL_LOW ;
 struct rv6xx_power_info* rv6xx_get_pi (struct radeon_device*) ;
 int rv6xx_program_engine_spread_spectrum (struct radeon_device*,int ,size_t) ;

__attribute__((used)) static void rv6xx_program_sclk_spread_spectrum_parameters_lowest_entry(struct radeon_device *rdev)
{
 struct rv6xx_power_info *pi = rv6xx_get_pi(rdev);

 rv6xx_program_engine_spread_spectrum(rdev,
          pi->hw.sclks[R600_POWER_LEVEL_LOW],
          R600_POWER_LEVEL_LOW);
}
