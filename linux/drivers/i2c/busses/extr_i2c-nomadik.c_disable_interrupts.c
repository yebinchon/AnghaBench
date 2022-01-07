
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nmk_i2c_dev {scalar_t__ virtbase; } ;


 int I2C_CLEAR_ALL_INTS ;
 scalar_t__ I2C_IMSCR ;
 int IRQ_MASK (int) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int disable_interrupts(struct nmk_i2c_dev *dev, u32 irq)
{
 irq = IRQ_MASK(irq);
 writel(readl(dev->virtbase + I2C_IMSCR) & ~(I2C_CLEAR_ALL_INTS & irq),
   dev->virtbase + I2C_IMSCR);
 return 0;
}
