
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct zet6223_ts {TYPE_2__* supplies; TYPE_1__* client; } ;
struct device {int dummy; } ;
struct TYPE_6__ {char* supply; } ;
struct TYPE_5__ {struct device dev; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int ZET6223_POWER_ON_DELAY_MSEC ;
 int dev_err (struct device*,char*,int) ;
 int devm_add_action_or_reset (struct device*,int ,struct zet6223_ts*) ;
 int devm_regulator_bulk_get (struct device*,int ,TYPE_2__*) ;
 int msleep (int ) ;
 int regulator_bulk_enable (int ,TYPE_2__*) ;
 int zet6223_power_off ;

__attribute__((used)) static int zet6223_power_on(struct zet6223_ts *ts)
{
 struct device *dev = &ts->client->dev;
 int error;

 ts->supplies[0].supply = "vio";
 ts->supplies[1].supply = "vcc";

 error = devm_regulator_bulk_get(dev, ARRAY_SIZE(ts->supplies),
     ts->supplies);
 if (error)
  return error;

 error = regulator_bulk_enable(ARRAY_SIZE(ts->supplies), ts->supplies);
 if (error)
  return error;

 msleep(ZET6223_POWER_ON_DELAY_MSEC);

 error = devm_add_action_or_reset(dev, zet6223_power_off, ts);
 if (error) {
  dev_err(dev, "failed to install poweroff action: %d\n", error);
  return error;
 }

 return 0;
}
