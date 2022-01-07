
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cmd; int ready; } ;
struct wiimote_data {TYPE_1__ state; } ;


 int EIO ;
 int ERESTARTSYS ;
 int HZ ;
 scalar_t__ WIIPROTO_REQ_NULL ;
 int wait_for_completion_interruptible_timeout (int *,int ) ;

__attribute__((used)) static inline int wiimote_cmd_wait(struct wiimote_data *wdata)
{
 int ret;





 ret = wait_for_completion_interruptible_timeout(&wdata->state.ready, HZ);
 if (ret < 0)
  return -ERESTARTSYS;
 else if (ret == 0)
  return -EIO;
 else if (wdata->state.cmd != WIIPROTO_REQ_NULL)
  return -EIO;
 else
  return 0;
}
