
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nmk_i2c_dev {scalar_t__ virtbase; } ;


 int I2C_CLEAR_ALL_INTS ;
 scalar_t__ I2C_ICR ;
 int IRQ_MASK (int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void clear_all_interrupts(struct nmk_i2c_dev *dev)
{
 u32 mask;
 mask = IRQ_MASK(I2C_CLEAR_ALL_INTS);
 writel(mask, dev->virtbase + I2C_ICR);
}
