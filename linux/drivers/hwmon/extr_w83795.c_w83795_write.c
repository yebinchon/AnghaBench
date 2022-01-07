
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_client {int dev; } ;


 int dev_err (int *,char*,int,int) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int,int ) ;
 int w83795_set_bank (struct i2c_client*,int) ;

__attribute__((used)) static int w83795_write(struct i2c_client *client, u16 reg, u8 value)
{
 int err;

 err = w83795_set_bank(client, reg >> 8);
 if (err < 0)
  return err;

 err = i2c_smbus_write_byte_data(client, reg & 0xff, value);
 if (err < 0)
  dev_err(&client->dev,
   "Failed to write to register 0x%03x, err %d\n",
   (int)reg, err);
 return err;
}
