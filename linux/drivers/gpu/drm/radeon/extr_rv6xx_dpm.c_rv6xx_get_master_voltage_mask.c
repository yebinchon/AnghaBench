
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {int * vddc; } ;
struct rv6xx_power_info {TYPE_1__ hw; } ;
struct radeon_device {int dummy; } ;


 int R600_PM_NUMBER_OF_VOLTAGE_LEVELS ;
 int SET_VOLTAGE_TYPE_ASIC_VDDC ;
 int radeon_atom_get_voltage_gpio_settings (struct radeon_device*,int ,int ,int *,int *) ;
 struct rv6xx_power_info* rv6xx_get_pi (struct radeon_device*) ;

__attribute__((used)) static u64 rv6xx_get_master_voltage_mask(struct radeon_device *rdev)
{
 struct rv6xx_power_info *pi = rv6xx_get_pi(rdev);
 u64 master_mask = 0;
 int i;

 for (i = 0; i < R600_PM_NUMBER_OF_VOLTAGE_LEVELS; i++) {
  u32 tmp_mask, tmp_set_pins;
  int ret;

  ret = radeon_atom_get_voltage_gpio_settings(rdev,
           pi->hw.vddc[i],
           SET_VOLTAGE_TYPE_ASIC_VDDC,
           &tmp_set_pins, &tmp_mask);

  if (ret == 0)
   master_mask |= tmp_mask;
 }

 return master_mask;
}
