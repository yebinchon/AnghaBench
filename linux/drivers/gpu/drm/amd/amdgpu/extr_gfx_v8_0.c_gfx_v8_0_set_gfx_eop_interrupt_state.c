
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;
typedef enum amdgpu_interrupt_state { ____Placeholder_amdgpu_interrupt_state } amdgpu_interrupt_state ;


 int AMDGPU_IRQ_STATE_DISABLE ;
 int CP_INT_CNTL_RING0 ;
 int TIME_STAMP_INT_ENABLE ;
 int WREG32_FIELD (int ,int ,int) ;

__attribute__((used)) static void gfx_v8_0_set_gfx_eop_interrupt_state(struct amdgpu_device *adev,
       enum amdgpu_interrupt_state state)
{
 WREG32_FIELD(CP_INT_CNTL_RING0, TIME_STAMP_INT_ENABLE,
       state == AMDGPU_IRQ_STATE_DISABLE ? 0 : 1);
}
