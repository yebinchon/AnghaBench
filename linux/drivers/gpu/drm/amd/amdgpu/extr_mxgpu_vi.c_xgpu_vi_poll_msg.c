
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;
typedef enum idh_event { ____Placeholder_idh_event } idh_event ;


 int ETIME ;
 int VI_MAILBOX_TIMEDOUT ;
 int mdelay (int) ;
 int pr_err (char*) ;
 int xgpu_vi_mailbox_rcv_msg (struct amdgpu_device*,int) ;

__attribute__((used)) static int xgpu_vi_poll_msg(struct amdgpu_device *adev, enum idh_event event)
{
 int r = 0, timeout = VI_MAILBOX_TIMEDOUT;

 r = xgpu_vi_mailbox_rcv_msg(adev, event);
 while (r) {
  if (timeout <= 0) {
   pr_err("Doesn't get ack from pf.\n");
   r = -ETIME;
   break;
  }
  mdelay(5);
  timeout -= 5;

  r = xgpu_vi_mailbox_rcv_msg(adev, event);
 }

 return r;
}
