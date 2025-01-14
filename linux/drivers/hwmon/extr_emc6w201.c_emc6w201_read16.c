
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct i2c_client {int dev; } ;


 int dev_err (int *,char*,int,char*,scalar_t__) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static u16 emc6w201_read16(struct i2c_client *client, u8 reg)
{
 int lsb, msb;

 lsb = i2c_smbus_read_byte_data(client, reg);
 msb = i2c_smbus_read_byte_data(client, reg + 1);
 if (unlikely(lsb < 0 || msb < 0)) {
  dev_err(&client->dev, "%d-bit %s failed at 0x%02x\n",
   16, "read", reg);
  return 0xFFFF;
 }

 return (msb << 8) | lsb;
}
