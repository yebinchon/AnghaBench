
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlr_i2c_private {int iobase; } ;


 int XLR_I2C_STATUS ;
 int xlr_i2c_busy (struct xlr_i2c_private*,int ) ;
 int xlr_i2c_rdreg (int ,int ) ;

__attribute__((used)) static int xlr_i2c_idle(struct xlr_i2c_private *priv)
{
 return !xlr_i2c_busy(priv, xlr_i2c_rdreg(priv->iobase, XLR_I2C_STATUS));
}
