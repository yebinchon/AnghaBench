
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_irq_src {int dummy; } ;
struct amdgpu_device {int dummy; } ;
typedef enum amdgpu_interrupt_state { ____Placeholder_amdgpu_interrupt_state } amdgpu_interrupt_state ;






 int CG_THERMAL_INT_CTRL__THERM_INTH_MASK_MASK ;
 int CG_THERMAL_INT_CTRL__THERM_INTL_MASK_MASK ;
 int RREG32_SMC (int ) ;
 int WREG32_SMC (int ,int ) ;
 int ixCG_THERMAL_INT_CTRL ;

__attribute__((used)) static int kv_dpm_set_interrupt_state(struct amdgpu_device *adev,
          struct amdgpu_irq_src *src,
          unsigned type,
          enum amdgpu_interrupt_state state)
{
 u32 cg_thermal_int;

 switch (type) {
 case 128:
  switch (state) {
  case 131:
   cg_thermal_int = RREG32_SMC(ixCG_THERMAL_INT_CTRL);
   cg_thermal_int &= ~CG_THERMAL_INT_CTRL__THERM_INTH_MASK_MASK;
   WREG32_SMC(ixCG_THERMAL_INT_CTRL, cg_thermal_int);
   break;
  case 130:
   cg_thermal_int = RREG32_SMC(ixCG_THERMAL_INT_CTRL);
   cg_thermal_int |= CG_THERMAL_INT_CTRL__THERM_INTH_MASK_MASK;
   WREG32_SMC(ixCG_THERMAL_INT_CTRL, cg_thermal_int);
   break;
  default:
   break;
  }
  break;

 case 129:
  switch (state) {
  case 131:
   cg_thermal_int = RREG32_SMC(ixCG_THERMAL_INT_CTRL);
   cg_thermal_int &= ~CG_THERMAL_INT_CTRL__THERM_INTL_MASK_MASK;
   WREG32_SMC(ixCG_THERMAL_INT_CTRL, cg_thermal_int);
   break;
  case 130:
   cg_thermal_int = RREG32_SMC(ixCG_THERMAL_INT_CTRL);
   cg_thermal_int |= CG_THERMAL_INT_CTRL__THERM_INTL_MASK_MASK;
   WREG32_SMC(ixCG_THERMAL_INT_CTRL, cg_thermal_int);
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
