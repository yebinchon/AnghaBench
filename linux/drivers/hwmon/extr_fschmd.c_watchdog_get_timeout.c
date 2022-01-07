
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fschmd_data {int watchdog_control; int watchdog_preset; int watchdog_lock; } ;


 int FSCHMD_WDOG_CONTROL_RESOLUTION ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int watchdog_get_timeout(struct fschmd_data *data)
{
 int timeout;

 mutex_lock(&data->watchdog_lock);
 if (data->watchdog_control & FSCHMD_WDOG_CONTROL_RESOLUTION)
  timeout = data->watchdog_preset * 60;
 else
  timeout = data->watchdog_preset * 2;
 mutex_unlock(&data->watchdog_lock);

 return timeout;
}
