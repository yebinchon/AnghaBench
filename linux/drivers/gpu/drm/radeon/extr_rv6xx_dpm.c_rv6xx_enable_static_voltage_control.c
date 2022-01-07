
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vddc; } ;
struct rv6xx_ps {TYPE_1__ low; } ;
struct radeon_ps {int dummy; } ;
struct radeon_device {int dummy; } ;


 int SET_VOLTAGE_TYPE_ASIC_VDDC ;
 int r600_voltage_control_deactivate_static_control (struct radeon_device*,int ) ;
 int radeon_atom_set_voltage (struct radeon_device*,int ,int ) ;
 int rv6xx_get_master_voltage_mask (struct radeon_device*) ;
 struct rv6xx_ps* rv6xx_get_ps (struct radeon_ps*) ;

__attribute__((used)) static void rv6xx_enable_static_voltage_control(struct radeon_device *rdev,
      struct radeon_ps *new_ps,
      bool enable)
{
 struct rv6xx_ps *new_state = rv6xx_get_ps(new_ps);

 if (enable)
  radeon_atom_set_voltage(rdev,
     new_state->low.vddc,
     SET_VOLTAGE_TYPE_ASIC_VDDC);
 else
  r600_voltage_control_deactivate_static_control(rdev,
              rv6xx_get_master_voltage_mask(rdev));
}
