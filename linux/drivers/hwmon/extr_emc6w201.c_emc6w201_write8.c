
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;


 int dev_err (int *,char*,int,char*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int emc6w201_write8(struct i2c_client *client, u8 reg, u8 val)
{
 int err;

 err = i2c_smbus_write_byte_data(client, reg, val);
 if (unlikely(err < 0))
  dev_err(&client->dev, "%d-bit %s failed at 0x%02x\n",
   8, "write", reg);

 return err;
}
