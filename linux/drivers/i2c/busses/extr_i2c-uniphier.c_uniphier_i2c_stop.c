
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;


 int UNIPHIER_I2C_DTRM_NACK ;
 int UNIPHIER_I2C_DTRM_STO ;
 int uniphier_i2c_send_byte (struct i2c_adapter*,int) ;

__attribute__((used)) static int uniphier_i2c_stop(struct i2c_adapter *adap)
{
 return uniphier_i2c_send_byte(adap, UNIPHIER_I2C_DTRM_STO |
          UNIPHIER_I2C_DTRM_NACK);
}
