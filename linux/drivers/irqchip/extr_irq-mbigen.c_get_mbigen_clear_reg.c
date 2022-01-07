
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int irq_hw_number_t ;


 int REG_MBIGEN_CLEAR_OFFSET ;

__attribute__((used)) static inline void get_mbigen_clear_reg(irq_hw_number_t hwirq,
     u32 *mask, u32 *addr)
{
 unsigned int ofst = (hwirq / 32) * 4;

 *mask = 1 << (hwirq % 32);
 *addr = ofst + REG_MBIGEN_CLEAR_OFFSET;
}
