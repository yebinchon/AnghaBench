
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpc2k_i2c {scalar_t__ base; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ LPC24XX_I2CONSET ;
 int LPC24XX_SI ;
 int i2c_lpc2k_pump_msg (struct lpc2k_i2c*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static irqreturn_t i2c_lpc2k_handler(int irq, void *dev_id)
{
 struct lpc2k_i2c *i2c = dev_id;

 if (readl(i2c->base + LPC24XX_I2CONSET) & LPC24XX_SI) {
  i2c_lpc2k_pump_msg(i2c);
  return IRQ_HANDLED;
 }

 return IRQ_NONE;
}
