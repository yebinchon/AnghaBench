
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int ENODEV ;




 int TSL4531_ID ;
 int TSL4531_ID_SHIFT ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;

__attribute__((used)) static int tsl4531_check_id(struct i2c_client *client)
{
 int ret = i2c_smbus_read_byte_data(client, TSL4531_ID);
 if (ret < 0)
  return ret;

 switch (ret >> TSL4531_ID_SHIFT) {
 case 131:
 case 130:
 case 129:
 case 128:
  return 0;
 default:
  return -ENODEV;
 }
}
