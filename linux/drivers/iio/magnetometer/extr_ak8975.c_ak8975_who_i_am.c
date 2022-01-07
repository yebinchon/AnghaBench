
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct i2c_client {int dev; } ;
typedef enum asahi_compass_chipset { ____Placeholder_asahi_compass_chipset } asahi_compass_chipset ;



 scalar_t__ AK09911_DEVICE_ID ;

 scalar_t__ AK09912_DEVICE_ID ;
 int AK09912_REG_WIA1 ;


 scalar_t__ AK8975_DEVICE_ID ;
 int ENODEV ;
 int dev_err (int *,char*,...) ;
 int i2c_smbus_read_i2c_block_data_or_emulated (struct i2c_client*,int ,int,scalar_t__*) ;

__attribute__((used)) static int ak8975_who_i_am(struct i2c_client *client,
      enum asahi_compass_chipset type)
{
 u8 wia_val[2];
 int ret;
 ret = i2c_smbus_read_i2c_block_data_or_emulated(
   client, AK09912_REG_WIA1, 2, wia_val);
 if (ret < 0) {
  dev_err(&client->dev, "Error reading WIA\n");
  return ret;
 }

 if (wia_val[0] != AK8975_DEVICE_ID)
  return -ENODEV;

 switch (type) {
 case 128:
 case 129:
  return 0;
 case 131:
  if (wia_val[1] == AK09911_DEVICE_ID)
   return 0;
  break;
 case 130:
  if (wia_val[1] == AK09912_DEVICE_ID)
   return 0;
  break;
 default:
  dev_err(&client->dev, "Type %d unknown\n", type);
 }
 return -ENODEV;
}
