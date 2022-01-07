
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct egpio_info {int ack_register; int bus_shift; int ack_write; } ;


 int egpio_writew (int ,struct egpio_info*,int) ;
 int pr_debug (char*,int ,int) ;

__attribute__((used)) static inline void ack_irqs(struct egpio_info *ei)
{
 egpio_writew(ei->ack_write, ei, ei->ack_register);
 pr_debug("EGPIO ack - write %x to base+%x\n",
   ei->ack_write, ei->ack_register << ei->bus_shift);
}
