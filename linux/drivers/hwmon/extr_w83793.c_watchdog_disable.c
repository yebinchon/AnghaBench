
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83793_data {int watchdog_lock; int client; } ;


 int ENODEV ;
 int W83793_REG_WDT_LOCK ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int w83793_write_value (int ,int ,int) ;

__attribute__((used)) static int watchdog_disable(struct w83793_data *data)
{
 int ret = 0;

 mutex_lock(&data->watchdog_lock);
 if (!data->client) {
  ret = -ENODEV;
  goto leave;
 }


 w83793_write_value(data->client, W83793_REG_WDT_LOCK, 0xAA);

leave:
 mutex_unlock(&data->watchdog_lock);
 return ret;
}
