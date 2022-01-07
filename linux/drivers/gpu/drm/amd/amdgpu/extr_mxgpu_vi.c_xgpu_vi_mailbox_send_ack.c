
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int MAILBOX_CONTROL ;
 int RCV_MSG_ACK ;
 int RCV_MSG_VALID ;
 int REG_FIELD_MASK (int ,int ) ;
 int REG_SET_FIELD (int,int ,int ,int) ;
 int RREG32_NO_KIQ (int ) ;
 int VI_MAILBOX_TIMEDOUT ;
 int WREG32_NO_KIQ (int ,int) ;
 int mdelay (int) ;
 int mmMAILBOX_CONTROL ;
 int pr_err (char*) ;

__attribute__((used)) static void xgpu_vi_mailbox_send_ack(struct amdgpu_device *adev)
{
 u32 reg;
 int timeout = VI_MAILBOX_TIMEDOUT;
 u32 mask = REG_FIELD_MASK(MAILBOX_CONTROL, RCV_MSG_VALID);

 reg = RREG32_NO_KIQ(mmMAILBOX_CONTROL);
 reg = REG_SET_FIELD(reg, MAILBOX_CONTROL, RCV_MSG_ACK, 1);
 WREG32_NO_KIQ(mmMAILBOX_CONTROL, reg);


 reg = RREG32_NO_KIQ(mmMAILBOX_CONTROL);
 while (reg & mask) {
  if (timeout <= 0) {
   pr_err("RCV_MSG_VALID is not cleared\n");
   break;
  }
  mdelay(1);
  timeout -=1;

  reg = RREG32_NO_KIQ(mmMAILBOX_CONTROL);
 }
}
