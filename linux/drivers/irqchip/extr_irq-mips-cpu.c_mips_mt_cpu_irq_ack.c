
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;


 int C_SW0 ;
 int clear_c0_cause (int) ;
 unsigned int dvpe () ;
 int evpe (unsigned int) ;
 int mask_mips_irq (struct irq_data*) ;

__attribute__((used)) static void mips_mt_cpu_irq_ack(struct irq_data *d)
{
 unsigned int vpflags = dvpe();
 clear_c0_cause(C_SW0 << d->hwirq);
 evpe(vpflags);
 mask_mips_irq(d);
}
