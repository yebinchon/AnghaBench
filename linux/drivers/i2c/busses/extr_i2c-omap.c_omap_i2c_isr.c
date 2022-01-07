
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct omap_i2c_dev {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_WAKE_THREAD ;
 int OMAP_I2C_IE_REG ;
 int OMAP_I2C_STAT_REG ;
 int omap_i2c_read_reg (struct omap_i2c_dev*,int ) ;

__attribute__((used)) static irqreturn_t
omap_i2c_isr(int irq, void *dev_id)
{
 struct omap_i2c_dev *omap = dev_id;
 irqreturn_t ret = IRQ_HANDLED;
 u16 mask;
 u16 stat;

 stat = omap_i2c_read_reg(omap, OMAP_I2C_STAT_REG);
 mask = omap_i2c_read_reg(omap, OMAP_I2C_IE_REG);

 if (stat & mask)
  ret = IRQ_WAKE_THREAD;

 return ret;
}
