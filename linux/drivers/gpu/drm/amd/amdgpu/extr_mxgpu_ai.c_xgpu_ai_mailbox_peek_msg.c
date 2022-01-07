
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;
typedef enum idh_event { ____Placeholder_idh_event } idh_event ;


 int NBIO ;
 int RREG32_NO_KIQ (int ) ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int mmBIF_BX_PF0_MAILBOX_MSGBUF_RCV_DW0 ;

__attribute__((used)) static enum idh_event xgpu_ai_mailbox_peek_msg(struct amdgpu_device *adev)
{
 return RREG32_NO_KIQ(SOC15_REG_OFFSET(NBIO, 0,
    mmBIF_BX_PF0_MAILBOX_MSGBUF_RCV_DW0));
}
