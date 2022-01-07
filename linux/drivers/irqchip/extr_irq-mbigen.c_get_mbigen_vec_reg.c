
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irq_hw_number_t ;


 int IRQS_PER_MBIGEN_NODE ;
 unsigned int MBIGEN_NODE_OFFSET ;
 unsigned int REG_MBIGEN_VEC_OFFSET ;
 scalar_t__ RESERVED_IRQ_PER_MBIGEN_CHIP ;

__attribute__((used)) static inline unsigned int get_mbigen_vec_reg(irq_hw_number_t hwirq)
{
 unsigned int nid, pin;

 hwirq -= RESERVED_IRQ_PER_MBIGEN_CHIP;
 nid = hwirq / IRQS_PER_MBIGEN_NODE + 1;
 pin = hwirq % IRQS_PER_MBIGEN_NODE;

 return pin * 4 + nid * MBIGEN_NODE_OFFSET
   + REG_MBIGEN_VEC_OFFSET;
}
