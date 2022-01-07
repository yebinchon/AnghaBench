
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct elan_tp_data {TYPE_2__* client; TYPE_1__* ops; int vcc; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int (* power_control ) (TYPE_2__*,int) ;} ;


 int ETP_RETRY_COUNT ;
 int dev_err (int *,char*,int) ;
 int msleep (int) ;
 int regulator_enable (int ) ;
 int stub1 (TYPE_2__*,int) ;

__attribute__((used)) static int elan_enable_power(struct elan_tp_data *data)
{
 int repeat = ETP_RETRY_COUNT;
 int error;

 error = regulator_enable(data->vcc);
 if (error) {
  dev_err(&data->client->dev,
   "failed to enable regulator: %d\n", error);
  return error;
 }

 do {
  error = data->ops->power_control(data->client, 1);
  if (error >= 0)
   return 0;

  msleep(30);
 } while (--repeat > 0);

 dev_err(&data->client->dev, "failed to enable power: %d\n", error);
 return error;
}
