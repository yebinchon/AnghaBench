
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct raydium_data {int reset_gpio; TYPE_1__* client; int avdd; int vccio; } ;
struct TYPE_2__ {int dev; } ;


 int RM_POWERON_DELAY_USEC ;
 int RM_RESET_DELAY_MSEC ;
 int dev_err (int *,char*,int) ;
 int gpiod_set_value_cansleep (int ,int) ;
 int msleep (int ) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 int udelay (int ) ;

__attribute__((used)) static int raydium_i2c_power_on(struct raydium_data *ts)
{
 int error;

 if (!ts->reset_gpio)
  return 0;

 gpiod_set_value_cansleep(ts->reset_gpio, 1);

 error = regulator_enable(ts->avdd);
 if (error) {
  dev_err(&ts->client->dev,
   "failed to enable avdd regulator: %d\n", error);
  goto release_reset_gpio;
 }

 error = regulator_enable(ts->vccio);
 if (error) {
  regulator_disable(ts->avdd);
  dev_err(&ts->client->dev,
   "failed to enable vccio regulator: %d\n", error);
  goto release_reset_gpio;
 }

 udelay(RM_POWERON_DELAY_USEC);

release_reset_gpio:
 gpiod_set_value_cansleep(ts->reset_gpio, 0);

 if (error)
  return error;

 msleep(RM_RESET_DELAY_MSEC);

 return 0;
}
