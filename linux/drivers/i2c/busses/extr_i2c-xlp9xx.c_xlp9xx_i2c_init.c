
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xlp9xx_i2c_dev {int clk_hz; int ip_clk_hz; } ;


 int DIV_ROUND_UP (int ,int ) ;
 int XLP9XX_I2C_CTRL ;
 int XLP9XX_I2C_CTRL_EN ;
 int XLP9XX_I2C_CTRL_MASTER ;
 int XLP9XX_I2C_CTRL_RST ;
 int XLP9XX_I2C_DIV ;
 int XLP9XX_I2C_INTEN ;
 int xlp9xx_write_i2c_reg (struct xlp9xx_i2c_dev*,int ,int) ;

__attribute__((used)) static int xlp9xx_i2c_init(struct xlp9xx_i2c_dev *priv)
{
 u32 prescale;





 prescale = DIV_ROUND_UP(priv->ip_clk_hz, priv->clk_hz);
 prescale = ((prescale - 8) / 5) - 1;
 xlp9xx_write_i2c_reg(priv, XLP9XX_I2C_CTRL, XLP9XX_I2C_CTRL_RST);
 xlp9xx_write_i2c_reg(priv, XLP9XX_I2C_CTRL, XLP9XX_I2C_CTRL_EN |
        XLP9XX_I2C_CTRL_MASTER);
 xlp9xx_write_i2c_reg(priv, XLP9XX_I2C_DIV, prescale);
 xlp9xx_write_i2c_reg(priv, XLP9XX_I2C_INTEN, 0);

 return 0;
}
