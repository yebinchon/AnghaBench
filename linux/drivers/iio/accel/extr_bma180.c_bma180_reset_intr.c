
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bma180_data {TYPE_2__* client; TYPE_1__* part_info; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int int_reset_mask; int int_reset_reg; } ;


 int bma180_set_bits (struct bma180_data*,int ,int ,int) ;
 int dev_err (int *,char*) ;

__attribute__((used)) static int bma180_reset_intr(struct bma180_data *data)
{
 int ret = bma180_set_bits(data, data->part_info->int_reset_reg,
  data->part_info->int_reset_mask, 1);

 if (ret)
  dev_err(&data->client->dev, "failed to reset interrupt\n");

 return ret;
}
