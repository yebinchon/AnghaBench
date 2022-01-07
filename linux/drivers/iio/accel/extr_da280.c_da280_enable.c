
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;


 int DA280_MODE_DISABLE ;
 int DA280_MODE_ENABLE ;
 int DA280_REG_MODE_BW ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;

__attribute__((used)) static int da280_enable(struct i2c_client *client, bool enable)
{
 u8 data = enable ? DA280_MODE_ENABLE : DA280_MODE_DISABLE;

 return i2c_smbus_write_byte_data(client, DA280_REG_MODE_BW, data);
}
