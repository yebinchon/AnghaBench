
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_irq_src {int dummy; } ;
struct amdgpu_device {int dummy; } ;
typedef enum amdgpu_interrupt_state { ____Placeholder_amdgpu_interrupt_state } amdgpu_interrupt_state ;




 int CP_INT_CNTL_RING0__PRIV_REG_INT_ENABLE_MASK ;
 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;
 int mmCP_INT_CNTL_RING0 ;

__attribute__((used)) static int gfx_v6_0_set_priv_reg_fault_state(struct amdgpu_device *adev,
          struct amdgpu_irq_src *src,
          unsigned type,
          enum amdgpu_interrupt_state state)
{
 u32 cp_int_cntl;

 switch (state) {
 case 129:
  cp_int_cntl = RREG32(mmCP_INT_CNTL_RING0);
  cp_int_cntl &= ~CP_INT_CNTL_RING0__PRIV_REG_INT_ENABLE_MASK;
  WREG32(mmCP_INT_CNTL_RING0, cp_int_cntl);
  break;
 case 128:
  cp_int_cntl = RREG32(mmCP_INT_CNTL_RING0);
  cp_int_cntl |= CP_INT_CNTL_RING0__PRIV_REG_INT_ENABLE_MASK;
  WREG32(mmCP_INT_CNTL_RING0, cp_int_cntl);
  break;
 default:
  break;
 }

 return 0;
}
