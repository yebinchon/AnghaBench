
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int irq_hw_number_t ;


 unsigned int SYS0_HWIRQ ;

__attribute__((used)) static unsigned int hwirq_to_syswake(irq_hw_number_t hw)
{
 return hw - SYS0_HWIRQ;
}
