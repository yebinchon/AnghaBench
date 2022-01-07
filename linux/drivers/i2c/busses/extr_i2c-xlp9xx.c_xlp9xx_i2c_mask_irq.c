
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xlp9xx_i2c_dev {int dummy; } ;


 int XLP9XX_I2C_INTEN ;
 int xlp9xx_read_i2c_reg (struct xlp9xx_i2c_dev*,int ) ;
 int xlp9xx_write_i2c_reg (struct xlp9xx_i2c_dev*,int ,int) ;

__attribute__((used)) static void xlp9xx_i2c_mask_irq(struct xlp9xx_i2c_dev *priv, u32 mask)
{
 u32 inten;

 inten = xlp9xx_read_i2c_reg(priv, XLP9XX_I2C_INTEN) & ~mask;
 xlp9xx_write_i2c_reg(priv, XLP9XX_I2C_INTEN, inten);
}
