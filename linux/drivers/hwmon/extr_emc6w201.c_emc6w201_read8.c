
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;


 int dev_err (int *,char*,int,char*,int) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static u8 emc6w201_read8(struct i2c_client *client, u8 reg)
{
 int val;

 val = i2c_smbus_read_byte_data(client, reg);
 if (unlikely(val < 0)) {
  dev_err(&client->dev, "%d-bit %s failed at 0x%02x\n",
   8, "read", reg);
  return 0x00;
 }

 return val;
}
