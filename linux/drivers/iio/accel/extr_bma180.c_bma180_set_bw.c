
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bma180_data {int bw; TYPE_1__* client; TYPE_2__* part_info; scalar_t__ sleep_state; } ;
struct TYPE_4__ {int num_bw; int* bw_table; int bw_mask; int bw_reg; } ;
struct TYPE_3__ {int dev; } ;


 int EBUSY ;
 int EINVAL ;
 int bma180_set_bits (struct bma180_data*,int ,int ,int) ;
 int dev_err (int *,char*) ;

__attribute__((used)) static int bma180_set_bw(struct bma180_data *data, int val)
{
 int ret, i;

 if (data->sleep_state)
  return -EBUSY;

 for (i = 0; i < data->part_info->num_bw; ++i) {
  if (data->part_info->bw_table[i] == val) {
   ret = bma180_set_bits(data, data->part_info->bw_reg,
    data->part_info->bw_mask, i);
   if (ret) {
    dev_err(&data->client->dev,
     "failed to set bandwidth\n");
    return ret;
   }
   data->bw = val;
   return 0;
  }
 }

 return -EINVAL;
}
