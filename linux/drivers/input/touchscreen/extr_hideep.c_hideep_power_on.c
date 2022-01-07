
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hideep_ts {TYPE_1__* client; int reg; scalar_t__ reset_gpio; int vcc_vid; int vcc_vdd; } ;
struct TYPE_2__ {int dev; } ;


 int HIDEEP_RESET_CMD ;
 int dev_err (int *,char*,int) ;
 int gpiod_set_value_cansleep (scalar_t__,int ) ;
 int msleep (int) ;
 int regmap_write (int ,int ,int) ;
 int regulator_enable (int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int hideep_power_on(struct hideep_ts *ts)
{
 int error = 0;

 error = regulator_enable(ts->vcc_vdd);
 if (error)
  dev_err(&ts->client->dev,
   "failed to enable 'vdd' regulator: %d", error);

 usleep_range(999, 1000);

 error = regulator_enable(ts->vcc_vid);
 if (error)
  dev_err(&ts->client->dev,
   "failed to enable 'vcc_vid' regulator: %d",
   error);

 msleep(30);

 if (ts->reset_gpio) {
  gpiod_set_value_cansleep(ts->reset_gpio, 0);
 } else {
  error = regmap_write(ts->reg, HIDEEP_RESET_CMD, 0x01);
  if (error)
   dev_err(&ts->client->dev,
    "failed to send 'reset' command: %d\n", error);
 }

 msleep(50);

 return error;
}
