
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sirf_data {int active; int power_wait; } ;


 int ETIMEDOUT ;
 int SIRF_REPORT_CYCLE ;
 int msecs_to_jiffies (int ) ;
 int msleep (unsigned long) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;

__attribute__((used)) static int sirf_wait_for_power_state_nowakeup(struct sirf_data *data,
      bool active,
      unsigned long timeout)
{
 int ret;


 msleep(timeout);


 data->active = 0;
 ret = wait_event_interruptible_timeout(data->power_wait,
   data->active, msecs_to_jiffies(SIRF_REPORT_CYCLE));
 if (ret < 0)
  return ret;

 if (ret > 0 && !active)
  return -ETIMEDOUT;

 if (ret == 0 && active)
  return -ETIMEDOUT;

 return 0;
}
