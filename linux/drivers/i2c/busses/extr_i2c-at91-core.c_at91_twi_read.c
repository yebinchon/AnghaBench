
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at91_twi_dev {unsigned int base; } ;


 int readl_relaxed (unsigned int) ;

unsigned at91_twi_read(struct at91_twi_dev *dev, unsigned reg)
{
 return readl_relaxed(dev->base + reg);
}
