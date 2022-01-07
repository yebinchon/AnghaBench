
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bma180_data {TYPE_2__* client; TYPE_1__* part_info; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int softreset_reg; } ;


 int BMA180_RESET_VAL ;
 int dev_err (int *,char*) ;
 int i2c_smbus_write_byte_data (TYPE_2__*,int ,int ) ;

__attribute__((used)) static int bma180_soft_reset(struct bma180_data *data)
{
 int ret = i2c_smbus_write_byte_data(data->client,
  data->part_info->softreset_reg, BMA180_RESET_VAL);

 if (ret)
  dev_err(&data->client->dev, "failed to reset the chip\n");

 return ret;
}
