
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpc2k_i2c {scalar_t__ base; } ;


 int LPC24XX_CLEAR_ALL ;
 scalar_t__ LPC24XX_I2ADDR ;
 scalar_t__ LPC24XX_I2CONCLR ;
 scalar_t__ LPC24XX_I2CONSET ;
 int LPC24XX_I2EN ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void i2c_lpc2k_reset(struct lpc2k_i2c *i2c)
{

 writel(LPC24XX_CLEAR_ALL, i2c->base + LPC24XX_I2CONCLR);
 writel(0, i2c->base + LPC24XX_I2ADDR);
 writel(LPC24XX_I2EN, i2c->base + LPC24XX_I2CONSET);
}
