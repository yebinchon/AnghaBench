
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct silead_ts_data {scalar_t__ gpio_power; } ;
struct i2c_client {int dummy; } ;
typedef enum silead_ts_power { ____Placeholder_silead_ts_power } silead_ts_power ;


 int SILEAD_POWER_SLEEP ;
 int gpiod_set_value_cansleep (scalar_t__,int) ;
 struct silead_ts_data* i2c_get_clientdata (struct i2c_client*) ;
 int msleep (int ) ;

__attribute__((used)) static void silead_ts_set_power(struct i2c_client *client,
    enum silead_ts_power state)
{
 struct silead_ts_data *data = i2c_get_clientdata(client);

 if (data->gpio_power) {
  gpiod_set_value_cansleep(data->gpio_power, state);
  msleep(SILEAD_POWER_SLEEP);
 }
}
