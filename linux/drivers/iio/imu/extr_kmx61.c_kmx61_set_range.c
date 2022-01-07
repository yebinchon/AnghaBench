
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct kmx61_data {int range; TYPE_1__* client; } ;
struct TYPE_3__ {int dev; } ;


 int KMX61_REG_CTRL1 ;
 int KMX61_REG_CTRL1_GSEL_MASK ;
 int dev_err (int *,char*) ;
 int i2c_smbus_read_byte_data (TYPE_1__*,int ) ;
 int i2c_smbus_write_byte_data (TYPE_1__*,int ,int) ;

__attribute__((used)) static int kmx61_set_range(struct kmx61_data *data, u8 range)
{
 int ret;

 ret = i2c_smbus_read_byte_data(data->client, KMX61_REG_CTRL1);
 if (ret < 0) {
  dev_err(&data->client->dev, "Error reading reg_ctrl1\n");
  return ret;
 }

 ret &= ~KMX61_REG_CTRL1_GSEL_MASK;
 ret |= range & KMX61_REG_CTRL1_GSEL_MASK;

 ret = i2c_smbus_write_byte_data(data->client, KMX61_REG_CTRL1, ret);
 if (ret < 0) {
  dev_err(&data->client->dev, "Error writing reg_ctrl1\n");
  return ret;
 }

 data->range = range;

 return 0;
}
