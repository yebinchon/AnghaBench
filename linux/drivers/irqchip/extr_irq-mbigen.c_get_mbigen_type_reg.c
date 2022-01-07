
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int irq_hw_number_t ;


 int IRQS_PER_MBIGEN_NODE ;
 unsigned int MBIGEN_NODE_OFFSET ;
 int REG_MBIGEN_TYPE_OFFSET ;
 scalar_t__ RESERVED_IRQ_PER_MBIGEN_CHIP ;

__attribute__((used)) static inline void get_mbigen_type_reg(irq_hw_number_t hwirq,
     u32 *mask, u32 *addr)
{
 unsigned int nid, irq_ofst, ofst;

 hwirq -= RESERVED_IRQ_PER_MBIGEN_CHIP;
 nid = hwirq / IRQS_PER_MBIGEN_NODE + 1;
 irq_ofst = hwirq % IRQS_PER_MBIGEN_NODE;

 *mask = 1 << (irq_ofst % 32);
 ofst = irq_ofst / 32 * 4;

 *addr = ofst + nid * MBIGEN_NODE_OFFSET
  + REG_MBIGEN_TYPE_OFFSET;
}
