
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;
typedef enum idh_event { ____Placeholder_idh_event } idh_event ;


 int ENOENT ;
 int IDH_FLR_NOTIFICATION_CMPL ;
 int MAILBOX_CONTROL ;
 int RCV_MSG_VALID ;
 int REG_FIELD_MASK (int ,int ) ;
 int RREG32_NO_KIQ (int ) ;
 int mmMAILBOX_CONTROL ;
 int mmMAILBOX_MSGBUF_RCV_DW0 ;
 int xgpu_vi_mailbox_send_ack (struct amdgpu_device*) ;

__attribute__((used)) static int xgpu_vi_mailbox_rcv_msg(struct amdgpu_device *adev,
       enum idh_event event)
{
 u32 reg;
 u32 mask = REG_FIELD_MASK(MAILBOX_CONTROL, RCV_MSG_VALID);


 if (event != IDH_FLR_NOTIFICATION_CMPL) {
  reg = RREG32_NO_KIQ(mmMAILBOX_CONTROL);
  if (!(reg & mask))
   return -ENOENT;
 }

 reg = RREG32_NO_KIQ(mmMAILBOX_MSGBUF_RCV_DW0);
 if (reg != event)
  return -ENOENT;


 xgpu_vi_mailbox_send_ack(adev);

 return 0;
}
