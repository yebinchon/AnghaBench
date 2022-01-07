
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sirf_data {int active; TYPE_1__* serdev; int power_wait; int wakeup; } ;
struct TYPE_2__ {int dev; } ;


 int ETIMEDOUT ;
 int dev_warn (int *,char*,int) ;
 int msecs_to_jiffies (unsigned long) ;
 int sirf_wait_for_power_state_nowakeup (struct sirf_data*,int,unsigned long) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;

__attribute__((used)) static int sirf_wait_for_power_state(struct sirf_data *data, bool active,
     unsigned long timeout)
{
 int ret;

 if (!data->wakeup)
  return sirf_wait_for_power_state_nowakeup(data, active, timeout);

 ret = wait_event_interruptible_timeout(data->power_wait,
   data->active == active, msecs_to_jiffies(timeout));
 if (ret < 0)
  return ret;

 if (ret == 0) {
  dev_warn(&data->serdev->dev, "timeout waiting for active state = %d\n",
    active);
  return -ETIMEDOUT;
 }

 return 0;
}
