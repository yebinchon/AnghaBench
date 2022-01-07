
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct kmx61_data {int acc_stby; int mag_stby; TYPE_1__* client; } ;
struct TYPE_3__ {int dev; } ;


 int KMX61_ACC ;
 int KMX61_ACC_STBY_BIT ;
 int KMX61_ACT_STBY_BIT ;
 int KMX61_MAG ;
 int KMX61_MAG_STBY_BIT ;
 int KMX61_REG_STBY ;
 int dev_err (int *,char*) ;
 int i2c_smbus_read_byte_data (TYPE_1__*,int ) ;
 int i2c_smbus_write_byte_data (TYPE_1__*,int ,int) ;

__attribute__((used)) static int kmx61_set_mode(struct kmx61_data *data, u8 mode, u8 device,
     bool update)
{
 int ret;
 int acc_stby = -1, mag_stby = -1;

 ret = i2c_smbus_read_byte_data(data->client, KMX61_REG_STBY);
 if (ret < 0) {
  dev_err(&data->client->dev, "Error reading reg_stby\n");
  return ret;
 }
 if (device & KMX61_ACC) {
  if (mode & KMX61_ACC_STBY_BIT) {
   ret |= KMX61_ACC_STBY_BIT;
   acc_stby = 1;
  } else {
   ret &= ~KMX61_ACC_STBY_BIT;
   acc_stby = 0;
  }
 }

 if (device & KMX61_MAG) {
  if (mode & KMX61_MAG_STBY_BIT) {
   ret |= KMX61_MAG_STBY_BIT;
   mag_stby = 1;
  } else {
   ret &= ~KMX61_MAG_STBY_BIT;
   mag_stby = 0;
  }
 }

 if (mode & KMX61_ACT_STBY_BIT)
  ret |= KMX61_ACT_STBY_BIT;

 ret = i2c_smbus_write_byte_data(data->client, KMX61_REG_STBY, ret);
 if (ret < 0) {
  dev_err(&data->client->dev, "Error writing reg_stby\n");
  return ret;
 }

 if (acc_stby != -1 && update)
  data->acc_stby = acc_stby;
 if (mag_stby != -1 && update)
  data->mag_stby = mag_stby;

 return 0;
}
