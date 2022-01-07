
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kmx61_data {TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 int KMX61_REG_CTRL2 ;
 int dev_err (int *,char*) ;
 int i2c_smbus_write_byte_data (TYPE_1__*,int ,int) ;
 int kmx61_convert_wake_up_odr_to_bit (int,int) ;

__attribute__((used)) static int kmx61_set_wake_up_odr(struct kmx61_data *data, int val, int val2)
{
 int ret, odr_bits;

 odr_bits = kmx61_convert_wake_up_odr_to_bit(val, val2);
 if (odr_bits < 0)
  return odr_bits;

 ret = i2c_smbus_write_byte_data(data->client, KMX61_REG_CTRL2,
     odr_bits);
 if (ret < 0)
  dev_err(&data->client->dev, "Error writing reg_ctrl2\n");
 return ret;
}
