
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ vddc; } ;
struct rv6xx_ps {TYPE_1__ low; } ;
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;


 int GENERAL_PWRMGT ;
 int R600_POWER_LEVEL_CTXSW ;
 int SW_GPIO_INDEX (int ) ;
 int SW_GPIO_INDEX_MASK ;
 int WREG32_P (int ,int ,int ) ;
 struct rv6xx_ps* rv6xx_get_ps (struct radeon_ps*) ;
 int rv6xx_program_voltage_stepping_entry (struct radeon_device*,int ,scalar_t__) ;

__attribute__((used)) static void rv6xx_set_sw_voltage_to_safe(struct radeon_device *rdev,
      struct radeon_ps *new_ps,
      struct radeon_ps *old_ps)
{
 struct rv6xx_ps *new_state = rv6xx_get_ps(new_ps);
 struct rv6xx_ps *old_state = rv6xx_get_ps(old_ps);
 u16 safe_voltage;

 safe_voltage = (new_state->low.vddc >= old_state->low.vddc) ?
  new_state->low.vddc : old_state->low.vddc;

 rv6xx_program_voltage_stepping_entry(rdev, R600_POWER_LEVEL_CTXSW,
          safe_voltage);

 WREG32_P(GENERAL_PWRMGT, SW_GPIO_INDEX(R600_POWER_LEVEL_CTXSW),
   ~SW_GPIO_INDEX_MASK);
}
