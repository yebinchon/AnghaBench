
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;
typedef enum idh_event { ____Placeholder_idh_event } idh_event ;


 int ENOENT ;
 int NBIO ;
 int RREG32_NO_KIQ (int ) ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int mmBIF_BX_PF0_MAILBOX_MSGBUF_RCV_DW0 ;
 int xgpu_ai_mailbox_send_ack (struct amdgpu_device*) ;

__attribute__((used)) static int xgpu_ai_mailbox_rcv_msg(struct amdgpu_device *adev,
       enum idh_event event)
{
 u32 reg;

 reg = RREG32_NO_KIQ(SOC15_REG_OFFSET(NBIO, 0,
          mmBIF_BX_PF0_MAILBOX_MSGBUF_RCV_DW0));
 if (reg != event)
  return -ENOENT;

 xgpu_ai_mailbox_send_ack(adev);

 return 0;
}
