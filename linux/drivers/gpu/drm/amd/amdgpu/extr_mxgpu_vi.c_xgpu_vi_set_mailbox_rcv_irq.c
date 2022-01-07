
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_irq_src {int dummy; } ;
struct amdgpu_device {int dummy; } ;
typedef enum amdgpu_interrupt_state { ____Placeholder_amdgpu_interrupt_state } amdgpu_interrupt_state ;


 int AMDGPU_IRQ_STATE_ENABLE ;
 int MAILBOX_INT_CNTL ;
 int REG_SET_FIELD (int ,int ,int ,int) ;
 int RREG32_NO_KIQ (int ) ;
 int VALID_INT_EN ;
 int WREG32_NO_KIQ (int ,int ) ;
 int mmMAILBOX_INT_CNTL ;

__attribute__((used)) static int xgpu_vi_set_mailbox_rcv_irq(struct amdgpu_device *adev,
           struct amdgpu_irq_src *src,
           unsigned type,
           enum amdgpu_interrupt_state state)
{
 u32 tmp = RREG32_NO_KIQ(mmMAILBOX_INT_CNTL);

 tmp = REG_SET_FIELD(tmp, MAILBOX_INT_CNTL, VALID_INT_EN,
       (state == AMDGPU_IRQ_STATE_ENABLE) ? 1 : 0);
 WREG32_NO_KIQ(mmMAILBOX_INT_CNTL, tmp);

 return 0;
}
