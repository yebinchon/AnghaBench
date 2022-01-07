
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_irq_src {int dummy; } ;
struct amdgpu_device {int dummy; } ;
typedef enum amdgpu_interrupt_state { ____Placeholder_amdgpu_interrupt_state } amdgpu_interrupt_state ;


 int AMDGPU_IRQ_STATE_DISABLE ;
 int CP_INT_CNTL_RING0 ;
 int PRIV_REG_INT_ENABLE ;
 int WREG32_FIELD (int ,int ,int) ;

__attribute__((used)) static int gfx_v8_0_set_priv_reg_fault_state(struct amdgpu_device *adev,
          struct amdgpu_irq_src *source,
          unsigned type,
          enum amdgpu_interrupt_state state)
{
 WREG32_FIELD(CP_INT_CNTL_RING0, PRIV_REG_INT_ENABLE,
       state == AMDGPU_IRQ_STATE_DISABLE ? 0 : 1);

 return 0;
}
