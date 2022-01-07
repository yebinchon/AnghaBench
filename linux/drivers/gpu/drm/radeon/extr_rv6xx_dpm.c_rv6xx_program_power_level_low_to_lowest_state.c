
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * pcie_gen2; } ;
struct rv6xx_power_info {TYPE_1__ hw; } ;
struct radeon_device {int dummy; } ;


 int R600_DISPLAY_WATERMARK_LOW ;
 size_t R600_POWER_LEVEL_LOW ;
 int r600_power_level_set_eng_clock_index (struct radeon_device*,size_t,int ) ;
 int r600_power_level_set_mem_clock_index (struct radeon_device*,size_t,int ) ;
 int r600_power_level_set_pcie_gen2 (struct radeon_device*,size_t,int ) ;
 int r600_power_level_set_voltage_index (struct radeon_device*,size_t,int ) ;
 int r600_power_level_set_watermark_id (struct radeon_device*,size_t,int ) ;
 struct rv6xx_power_info* rv6xx_get_pi (struct radeon_device*) ;

__attribute__((used)) static void rv6xx_program_power_level_low_to_lowest_state(struct radeon_device *rdev)
{
 struct rv6xx_power_info *pi = rv6xx_get_pi(rdev);

 r600_power_level_set_voltage_index(rdev, R600_POWER_LEVEL_LOW, 0);
 r600_power_level_set_mem_clock_index(rdev, R600_POWER_LEVEL_LOW, 0);
 r600_power_level_set_eng_clock_index(rdev, R600_POWER_LEVEL_LOW, 0);

 r600_power_level_set_watermark_id(rdev, R600_POWER_LEVEL_LOW,
       R600_DISPLAY_WATERMARK_LOW);

 r600_power_level_set_pcie_gen2(rdev, R600_POWER_LEVEL_LOW,
           pi->hw.pcie_gen2[R600_POWER_LEVEL_LOW]);

}
