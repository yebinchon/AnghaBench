
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t low_mclk_index; int * pcie_gen2; int medium_sclk_index; int * mclks; } ;
struct rv6xx_power_info {TYPE_1__ hw; } ;
struct radeon_device {int dummy; } ;


 int R600_DISPLAY_WATERMARK_LOW ;
 int R600_POWER_LEVEL_CTXSW ;
 size_t R600_POWER_LEVEL_LOW ;
 int R600_POWER_LEVEL_MEDIUM ;
 int r600_power_level_set_eng_clock_index (struct radeon_device*,int ,int ) ;
 int r600_power_level_set_mem_clock_index (struct radeon_device*,int ,int ) ;
 int r600_power_level_set_pcie_gen2 (struct radeon_device*,int ,int ) ;
 int r600_power_level_set_voltage_index (struct radeon_device*,int ,int) ;
 int r600_power_level_set_watermark_id (struct radeon_device*,int ,int ) ;
 int rv6xx_enable_engine_spread_spectrum (struct radeon_device*,int ,int) ;
 struct rv6xx_power_info* rv6xx_get_pi (struct radeon_device*) ;
 int rv6xx_program_mclk_stepping_entry (struct radeon_device*,int ,int ) ;

__attribute__((used)) static void rv6xx_program_power_level_medium_for_transition(struct radeon_device *rdev)
{
 struct rv6xx_power_info *pi = rv6xx_get_pi(rdev);

 rv6xx_program_mclk_stepping_entry(rdev,
       R600_POWER_LEVEL_CTXSW,
       pi->hw.mclks[pi->hw.low_mclk_index]);

 r600_power_level_set_voltage_index(rdev, R600_POWER_LEVEL_MEDIUM, 1);

 r600_power_level_set_mem_clock_index(rdev, R600_POWER_LEVEL_MEDIUM,
          R600_POWER_LEVEL_CTXSW);
 r600_power_level_set_eng_clock_index(rdev, R600_POWER_LEVEL_MEDIUM,
          pi->hw.medium_sclk_index);

 r600_power_level_set_watermark_id(rdev, R600_POWER_LEVEL_MEDIUM,
       R600_DISPLAY_WATERMARK_LOW);

 rv6xx_enable_engine_spread_spectrum(rdev, R600_POWER_LEVEL_MEDIUM, 0);

 r600_power_level_set_pcie_gen2(rdev, R600_POWER_LEVEL_MEDIUM,
           pi->hw.pcie_gen2[R600_POWER_LEVEL_LOW]);
}
