
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_irq_src {int dummy; } ;
struct amdgpu_device {int dummy; } ;
typedef enum amdgpu_interrupt_state { ____Placeholder_amdgpu_interrupt_state } amdgpu_interrupt_state ;




 int CP_INT_CNTL_RING0 ;
 int GC ;
 int PRIV_REG_INT_ENABLE ;
 int WREG32_FIELD15 (int ,int ,int ,int ,int) ;

__attribute__((used)) static int gfx_v10_0_set_priv_reg_fault_state(struct amdgpu_device *adev,
           struct amdgpu_irq_src *source,
           unsigned type,
           enum amdgpu_interrupt_state state)
{
 switch (state) {
 case 129:
 case 128:
  WREG32_FIELD15(GC, 0, CP_INT_CNTL_RING0,
          PRIV_REG_INT_ENABLE,
          state == 128 ? 1 : 0);
  break;
 default:
  break;
 }

 return 0;
}
