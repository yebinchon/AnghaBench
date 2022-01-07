
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct elants_data {int reset_gpio; int vcc33; TYPE_1__* client; int vccio; } ;
struct TYPE_2__ {int dev; } ;


 int ELAN_POWERON_DELAY_USEC ;
 int ELAN_RESET_DELAY_MSEC ;
 scalar_t__ IS_ERR_OR_NULL (int ) ;
 int dev_err (int *,char*,int) ;
 int gpiod_set_value_cansleep (int ,int) ;
 int msleep (int ) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 int udelay (int ) ;

__attribute__((used)) static int elants_i2c_power_on(struct elants_data *ts)
{
 int error;





 if (IS_ERR_OR_NULL(ts->reset_gpio))
  return 0;

 gpiod_set_value_cansleep(ts->reset_gpio, 1);

 error = regulator_enable(ts->vcc33);
 if (error) {
  dev_err(&ts->client->dev,
   "failed to enable vcc33 regulator: %d\n",
   error);
  goto release_reset_gpio;
 }

 error = regulator_enable(ts->vccio);
 if (error) {
  dev_err(&ts->client->dev,
   "failed to enable vccio regulator: %d\n",
   error);
  regulator_disable(ts->vcc33);
  goto release_reset_gpio;
 }





 udelay(ELAN_POWERON_DELAY_USEC);

release_reset_gpio:
 gpiod_set_value_cansleep(ts->reset_gpio, 0);
 if (error)
  return error;

 msleep(ELAN_RESET_DELAY_MSEC);

 return 0;
}
