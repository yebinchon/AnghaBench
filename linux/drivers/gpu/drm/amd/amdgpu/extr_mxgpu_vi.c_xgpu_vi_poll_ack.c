
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int ETIME ;
 int MAILBOX_CONTROL ;
 int REG_FIELD_MASK (int ,int ) ;
 int RREG32_NO_KIQ (int ) ;
 int TRN_MSG_ACK ;
 int VI_MAILBOX_TIMEDOUT ;
 int mdelay (int) ;
 int mmMAILBOX_CONTROL ;
 int pr_err (char*) ;

__attribute__((used)) static int xgpu_vi_poll_ack(struct amdgpu_device *adev)
{
 int r = 0, timeout = VI_MAILBOX_TIMEDOUT;
 u32 mask = REG_FIELD_MASK(MAILBOX_CONTROL, TRN_MSG_ACK);
 u32 reg;

 reg = RREG32_NO_KIQ(mmMAILBOX_CONTROL);
 while (!(reg & mask)) {
  if (timeout <= 0) {
   pr_err("Doesn't get ack from pf.\n");
   r = -ETIME;
   break;
  }
  mdelay(5);
  timeout -= 5;

  reg = RREG32_NO_KIQ(mmMAILBOX_CONTROL);
 }

 return r;
}
