
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;
typedef enum idh_event { ____Placeholder_idh_event } idh_event ;


 int AI_MAILBOX_POLL_MSG_TIMEDOUT ;
 int ETIME ;
 int msleep (int) ;
 int pr_err (char*,int,int) ;
 int xgpu_ai_mailbox_rcv_msg (struct amdgpu_device*,int) ;

__attribute__((used)) static int xgpu_ai_poll_msg(struct amdgpu_device *adev, enum idh_event event)
{
 int r, timeout = AI_MAILBOX_POLL_MSG_TIMEDOUT;

 do {
  r = xgpu_ai_mailbox_rcv_msg(adev, event);
  if (!r)
   return 0;

  msleep(10);
  timeout -= 10;
 } while (timeout > 1);

 pr_err("Doesn't get msg:%d from pf, error=%d\n", event, r);

 return -ETIME;
}
