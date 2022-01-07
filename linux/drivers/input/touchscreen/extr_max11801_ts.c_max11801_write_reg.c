
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int i2c_smbus_write_byte_data (struct i2c_client*,int,int) ;

__attribute__((used)) static int max11801_write_reg(struct i2c_client *client, int addr, int data)
{

 return i2c_smbus_write_byte_data(client, addr << 1, data);
}
