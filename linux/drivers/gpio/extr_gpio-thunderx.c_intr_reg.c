
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int GPIO_INTR ;

__attribute__((used)) static unsigned int intr_reg(unsigned int line)
{
 return 8 * line + GPIO_INTR;
}
