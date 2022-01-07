
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bma180_data {TYPE_2__* client; TYPE_1__* part_info; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int int_enable_mask; int int_enable_reg; } ;


 int bma180_reset_intr (struct bma180_data*) ;
 int bma180_set_bits (struct bma180_data*,int ,int ,int) ;
 int dev_err (int *,char*,int) ;

__attribute__((used)) static int bma180_set_new_data_intr_state(struct bma180_data *data, bool state)
{
 int ret = bma180_set_bits(data, data->part_info->int_enable_reg,
   data->part_info->int_enable_mask, state);
 if (ret)
  goto err;
 ret = bma180_reset_intr(data);
 if (ret)
  goto err;

 return 0;

err:
 dev_err(&data->client->dev,
  "failed to set new data interrupt state %d\n", state);
 return ret;
}
