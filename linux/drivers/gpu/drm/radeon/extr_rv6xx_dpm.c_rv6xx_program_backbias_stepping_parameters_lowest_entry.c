
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* backbias; } ;
struct rv6xx_power_info {TYPE_1__ hw; } ;
struct radeon_device {int dummy; } ;


 int LOW_BACKBIAS_VALUE ;
 int VID_UPPER_GPIO_CNTL ;
 int WREG32_P (int ,int ,int ) ;
 struct rv6xx_power_info* rv6xx_get_pi (struct radeon_device*) ;

__attribute__((used)) static void rv6xx_program_backbias_stepping_parameters_lowest_entry(struct radeon_device *rdev)
{
 struct rv6xx_power_info *pi = rv6xx_get_pi(rdev);

 if (pi->hw.backbias[0])
  WREG32_P(VID_UPPER_GPIO_CNTL, LOW_BACKBIAS_VALUE, ~LOW_BACKBIAS_VALUE);
 else
  WREG32_P(VID_UPPER_GPIO_CNTL, 0, ~LOW_BACKBIAS_VALUE);
}
