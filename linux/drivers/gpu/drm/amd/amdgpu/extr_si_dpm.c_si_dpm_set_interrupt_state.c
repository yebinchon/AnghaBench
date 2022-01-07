
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_irq_src {int dummy; } ;
struct amdgpu_device {int dummy; } ;
typedef enum amdgpu_interrupt_state { ____Placeholder_amdgpu_interrupt_state } amdgpu_interrupt_state ;






 int CG_THERMAL_INT ;
 int RREG32_SMC (int ) ;
 int THERM_INT_MASK_HIGH ;
 int THERM_INT_MASK_LOW ;
 int WREG32_SMC (int ,int ) ;

__attribute__((used)) static int si_dpm_set_interrupt_state(struct amdgpu_device *adev,
          struct amdgpu_irq_src *source,
          unsigned type,
          enum amdgpu_interrupt_state state)
{
 u32 cg_thermal_int;

 switch (type) {
 case 128:
  switch (state) {
  case 131:
   cg_thermal_int = RREG32_SMC(CG_THERMAL_INT);
   cg_thermal_int |= THERM_INT_MASK_HIGH;
   WREG32_SMC(CG_THERMAL_INT, cg_thermal_int);
   break;
  case 130:
   cg_thermal_int = RREG32_SMC(CG_THERMAL_INT);
   cg_thermal_int &= ~THERM_INT_MASK_HIGH;
   WREG32_SMC(CG_THERMAL_INT, cg_thermal_int);
   break;
  default:
   break;
  }
  break;

 case 129:
  switch (state) {
  case 131:
   cg_thermal_int = RREG32_SMC(CG_THERMAL_INT);
   cg_thermal_int |= THERM_INT_MASK_LOW;
   WREG32_SMC(CG_THERMAL_INT, cg_thermal_int);
   break;
  case 130:
   cg_thermal_int = RREG32_SMC(CG_THERMAL_INT);
   cg_thermal_int &= ~THERM_INT_MASK_LOW;
   WREG32_SMC(CG_THERMAL_INT, cg_thermal_int);
   break;
  default:
   break;
  }
  break;

 default:
  break;
 }
 return 0;
}
