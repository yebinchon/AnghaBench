
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct bma180_data {int pmode; TYPE_2__* client; TYPE_1__* part_info; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int power_mask; int power_reg; int lowpower_val; } ;


 int bma180_set_bits (struct bma180_data*,int ,int ,int ) ;
 int dev_err (int *,char*) ;

__attribute__((used)) static int bma180_set_pmode(struct bma180_data *data, bool mode)
{
 u8 reg_val = mode ? data->part_info->lowpower_val : 0;
 int ret = bma180_set_bits(data, data->part_info->power_reg,
  data->part_info->power_mask, reg_val);

 if (ret) {
  dev_err(&data->client->dev, "failed to set power mode\n");
  return ret;
 }
 data->pmode = mode;

 return 0;
}
