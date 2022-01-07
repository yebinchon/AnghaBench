
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nmk_i2c_dev {scalar_t__ virtbase; } ;


 scalar_t__ I2C_IMSCR ;
 int IRQ_MASK (int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void disable_all_interrupts(struct nmk_i2c_dev *dev)
{
 u32 mask = IRQ_MASK(0);
 writel(mask, dev->virtbase + I2C_IMSCR);
}
