
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kxcjk1013_data {int range; TYPE_1__* client; } ;
struct TYPE_5__ {int gsel_0; int gsel_1; } ;
struct TYPE_4__ {int dev; } ;


 int KXCJK1013_REG_CTRL1 ;
 int KXCJK1013_REG_CTRL1_BIT_GSEL0 ;
 int KXCJK1013_REG_CTRL1_BIT_GSEL1 ;
 TYPE_3__* KXCJK1013_scale_table ;
 int dev_err (int *,char*) ;
 int i2c_smbus_read_byte_data (TYPE_1__*,int ) ;
 int i2c_smbus_write_byte_data (TYPE_1__*,int ,int) ;

__attribute__((used)) static int kxcjk1013_set_range(struct kxcjk1013_data *data, int range_index)
{
 int ret;

 ret = i2c_smbus_read_byte_data(data->client, KXCJK1013_REG_CTRL1);
 if (ret < 0) {
  dev_err(&data->client->dev, "Error reading reg_ctrl1\n");
  return ret;
 }

 ret &= ~(KXCJK1013_REG_CTRL1_BIT_GSEL0 |
   KXCJK1013_REG_CTRL1_BIT_GSEL1);
 ret |= (KXCJK1013_scale_table[range_index].gsel_0 << 3);
 ret |= (KXCJK1013_scale_table[range_index].gsel_1 << 4);

 ret = i2c_smbus_write_byte_data(data->client,
     KXCJK1013_REG_CTRL1,
     ret);
 if (ret < 0) {
  dev_err(&data->client->dev, "Error writing reg_ctrl1\n");
  return ret;
 }

 data->range = range_index;

 return 0;
}
