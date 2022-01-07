
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83793_data {unsigned int watchdog_timeout; int watchdog_lock; int client; } ;


 unsigned int DIV_ROUND_UP (int,int) ;
 int EINVAL ;
 int ENODEV ;
 int W83793_REG_WDT_TIMEOUT ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int w83793_write_value (int ,int ,unsigned int) ;

__attribute__((used)) static int watchdog_set_timeout(struct w83793_data *data, int timeout)
{
 unsigned int mtimeout;
 int ret;

 mtimeout = DIV_ROUND_UP(timeout, 60);

 if (mtimeout > 255)
  return -EINVAL;

 mutex_lock(&data->watchdog_lock);
 if (!data->client) {
  ret = -ENODEV;
  goto leave;
 }

 data->watchdog_timeout = mtimeout;


 w83793_write_value(data->client, W83793_REG_WDT_TIMEOUT,
      data->watchdog_timeout);

 ret = mtimeout * 60;

leave:
 mutex_unlock(&data->watchdog_lock);
 return ret;
}
