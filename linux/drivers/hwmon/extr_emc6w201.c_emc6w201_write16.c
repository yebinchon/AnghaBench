
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct i2c_client {int dev; } ;


 int dev_err (int *,char*,int,char*,scalar_t__) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,scalar_t__,int) ;
 scalar_t__ likely (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int emc6w201_write16(struct i2c_client *client, u8 reg, u16 val)
{
 int err;

 err = i2c_smbus_write_byte_data(client, reg, val & 0xff);
 if (likely(!err))
  err = i2c_smbus_write_byte_data(client, reg + 1, val >> 8);
 if (unlikely(err < 0))
  dev_err(&client->dev, "%d-bit %s failed at 0x%02x\n",
   16, "write", reg);

 return err;
}
