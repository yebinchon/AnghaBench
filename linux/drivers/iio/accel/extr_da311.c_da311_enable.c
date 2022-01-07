
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;


 int DA311_REG_TEMP_CFG_REG ;
 int da311_register_mask_write (struct i2c_client*,int ,int,int) ;

__attribute__((used)) static int da311_enable(struct i2c_client *client, bool enable)
{
 u8 data = enable ? 0x00 : 0x20;

 return da311_register_mask_write(client, DA311_REG_TEMP_CFG_REG,
      0x20, data);
}
