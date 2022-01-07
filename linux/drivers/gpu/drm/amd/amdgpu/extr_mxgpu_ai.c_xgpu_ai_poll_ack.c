
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct amdgpu_device {int dummy; } ;


 int AI_MAIBOX_CONTROL_TRN_OFFSET_BYTE ;
 int AI_MAILBOX_POLL_ACK_TIMEDOUT ;
 int ETIME ;
 int RREG8 (int ) ;
 int mdelay (int) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int xgpu_ai_poll_ack(struct amdgpu_device *adev)
{
 int timeout = AI_MAILBOX_POLL_ACK_TIMEDOUT;
 u8 reg;

 do {
  reg = RREG8(AI_MAIBOX_CONTROL_TRN_OFFSET_BYTE);
  if (reg & 2)
   return 0;

  mdelay(5);
  timeout -= 5;
 } while (timeout > 1);

 pr_err("Doesn't get TRN_MSG_ACK from pf in %d msec\n", AI_MAILBOX_POLL_ACK_TIMEDOUT);

 return -ETIME;
}
