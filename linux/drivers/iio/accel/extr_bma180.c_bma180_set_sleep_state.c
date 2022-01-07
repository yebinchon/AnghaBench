
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bma180_data {int sleep_state; TYPE_2__* client; TYPE_1__* part_info; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int sleep_mask; int sleep_reg; } ;


 int bma180_set_bits (struct bma180_data*,int ,int ,int) ;
 int dev_err (int *,char*,int) ;

__attribute__((used)) static int bma180_set_sleep_state(struct bma180_data *data, bool state)
{
 int ret = bma180_set_bits(data, data->part_info->sleep_reg,
  data->part_info->sleep_mask, state);

 if (ret) {
  dev_err(&data->client->dev,
   "failed to set sleep state %d\n", state);
  return ret;
 }
 data->sleep_state = state;

 return 0;
}
