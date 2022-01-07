
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ irq_hw_number_t ;


 scalar_t__ SYS0_HWIRQ ;

__attribute__((used)) static unsigned int hwirq_is_syswake(irq_hw_number_t hw)
{
 return hw >= SYS0_HWIRQ;
}
