
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct t7_config {int idle; int active; } ;
struct mxt_data {int T7_address; TYPE_1__* client; struct t7_config t7_cfg; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 scalar_t__ MXT_POWER_CFG_DEEPSLEEP ;
 int __mxt_write_reg (TYPE_1__*,int ,int,struct t7_config*) ;
 int dev_dbg (struct device*,char*,int ,int ) ;

__attribute__((used)) static int mxt_set_t7_power_cfg(struct mxt_data *data, u8 sleep)
{
 struct device *dev = &data->client->dev;
 int error;
 struct t7_config *new_config;
 struct t7_config deepsleep = { .active = 0, .idle = 0 };

 if (sleep == MXT_POWER_CFG_DEEPSLEEP)
  new_config = &deepsleep;
 else
  new_config = &data->t7_cfg;

 error = __mxt_write_reg(data->client, data->T7_address,
    sizeof(data->t7_cfg), new_config);
 if (error)
  return error;

 dev_dbg(dev, "Set T7 ACTV:%d IDLE:%d\n",
  new_config->active, new_config->idle);

 return 0;
}
