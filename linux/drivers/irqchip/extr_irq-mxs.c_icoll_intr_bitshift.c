
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_data {int hwirq; } ;



__attribute__((used)) static u32 icoll_intr_bitshift(struct irq_data *d, u32 bit)
{




 return bit << ((d->hwirq & 3) << 3);
}
