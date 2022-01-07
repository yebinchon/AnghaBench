
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sirf_data {int wakeup; } ;


 int ETIMEDOUT ;
 unsigned long SIRF_ACTIVATE_TIMEOUT ;
 unsigned long SIRF_HIBERNATE_TIMEOUT ;
 int sirf_pulse_on_off (struct sirf_data*) ;
 int sirf_serdev_close (struct sirf_data*) ;
 int sirf_serdev_open (struct sirf_data*) ;
 int sirf_wait_for_power_state (struct sirf_data*,int,unsigned long) ;

__attribute__((used)) static int sirf_set_active(struct sirf_data *data, bool active)
{
 unsigned long timeout;
 int retries = 3;
 int ret;

 if (active)
  timeout = SIRF_ACTIVATE_TIMEOUT;
 else
  timeout = SIRF_HIBERNATE_TIMEOUT;

 if (!data->wakeup) {
  ret = sirf_serdev_open(data);
  if (ret)
   return ret;
 }

 do {
  sirf_pulse_on_off(data);
  ret = sirf_wait_for_power_state(data, active, timeout);
 } while (ret == -ETIMEDOUT && retries--);

 if (!data->wakeup)
  sirf_serdev_close(data);

 if (ret)
  return ret;

 return 0;
}
