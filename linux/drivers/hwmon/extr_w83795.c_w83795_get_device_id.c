
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int W83795_REG_DEVICEID ;
 int W83795_REG_DEVICEID_A ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;

__attribute__((used)) static int w83795_get_device_id(struct i2c_client *client)
{
 int device_id;

 device_id = i2c_smbus_read_byte_data(client, W83795_REG_DEVICEID);





 if (device_id < 0 || (device_id & 0xf0) != 0x50) {
  int alt_id;

  alt_id = i2c_smbus_read_byte_data(client,
        W83795_REG_DEVICEID_A);
  if (alt_id == 0x50)
   device_id = alt_id;
 }

 return device_id;
}
