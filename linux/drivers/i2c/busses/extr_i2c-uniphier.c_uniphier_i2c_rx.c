
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct i2c_adapter {int dummy; } ;


 int UNIPHIER_I2C_DTRM_NACK ;
 int UNIPHIER_I2C_DTRM_RD ;
 int UNIPHIER_I2C_DTRM_STA ;
 int uniphier_i2c_send_byte (struct i2c_adapter*,int) ;
 int uniphier_i2c_xfer_byte (struct i2c_adapter*,int,int *) ;

__attribute__((used)) static int uniphier_i2c_rx(struct i2c_adapter *adap, u16 addr, u16 len,
      u8 *buf)
{
 int ret;

 ret = uniphier_i2c_send_byte(adap, addr << 1 |
         UNIPHIER_I2C_DTRM_STA |
         UNIPHIER_I2C_DTRM_NACK |
         UNIPHIER_I2C_DTRM_RD);
 if (ret)
  return ret;

 while (len--) {
  u32 rxdata;

  ret = uniphier_i2c_xfer_byte(adap,
          len ? 0 : UNIPHIER_I2C_DTRM_NACK,
          &rxdata);
  if (ret)
   return ret;
  *buf++ = rxdata;
 }

 return 0;
}
