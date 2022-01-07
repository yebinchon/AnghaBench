
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at91_twi_dev {unsigned int base; } ;


 int writel_relaxed (unsigned int,unsigned int) ;

void at91_twi_write(struct at91_twi_dev *dev, unsigned reg, unsigned val)
{
 writel_relaxed(val, dev->base + reg);
}
