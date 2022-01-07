
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int EINVAL ;
 int MSR_PIC_ZSEL_HIGH ;
 int rdmsr (int ,int,int) ;
 int wrmsr (int ,int,int) ;

int cs5535_gpio_set_irq(unsigned group, unsigned irq)
{
 uint32_t lo, hi;

 if (group > 7 || irq > 15)
  return -EINVAL;

 rdmsr(MSR_PIC_ZSEL_HIGH, lo, hi);

 lo &= ~(0xF << (group * 4));
 lo |= (irq & 0xF) << (group * 4);

 wrmsr(MSR_PIC_ZSEL_HIGH, lo, hi);
 return 0;
}
