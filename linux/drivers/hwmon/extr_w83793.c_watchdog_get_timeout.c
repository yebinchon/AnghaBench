
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83793_data {int watchdog_timeout; int watchdog_lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int watchdog_get_timeout(struct w83793_data *data)
{
 int timeout;

 mutex_lock(&data->watchdog_lock);
 timeout = data->watchdog_timeout * 60;
 mutex_unlock(&data->watchdog_lock);

 return timeout;
}
