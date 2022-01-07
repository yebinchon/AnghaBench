
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;


 int i2c_smbus_read_byte_data (struct i2c_client*,int) ;

__attribute__((used)) static u8 read_register(struct i2c_client *client, int addr)
{

 return i2c_smbus_read_byte_data(client, addr << 1);
}
