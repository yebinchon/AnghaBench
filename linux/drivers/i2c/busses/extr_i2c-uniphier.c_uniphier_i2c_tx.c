
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_adapter {int dummy; } ;


 int UNIPHIER_I2C_DTRM_NACK ;
 int UNIPHIER_I2C_DTRM_STA ;
 int uniphier_i2c_send_byte (struct i2c_adapter*,int) ;

__attribute__((used)) static int uniphier_i2c_tx(struct i2c_adapter *adap, u16 addr, u16 len,
      const u8 *buf)
{
 int ret;

 ret = uniphier_i2c_send_byte(adap, addr << 1 |
         UNIPHIER_I2C_DTRM_STA |
         UNIPHIER_I2C_DTRM_NACK);
 if (ret)
  return ret;

 while (len--) {
  ret = uniphier_i2c_send_byte(adap,
          UNIPHIER_I2C_DTRM_NACK | *buf++);
  if (ret)
   return ret;
 }

 return 0;
}
