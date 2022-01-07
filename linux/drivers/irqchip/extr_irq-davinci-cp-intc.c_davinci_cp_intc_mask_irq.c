
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;


 int DAVINCI_CP_INTC_HOST_ENABLE_IDX_CLR ;
 int DAVINCI_CP_INTC_HOST_ENABLE_IDX_SET ;
 int DAVINCI_CP_INTC_SYS_ENABLE_IDX_CLR ;
 int davinci_cp_intc_write (int,int ) ;

__attribute__((used)) static void davinci_cp_intc_mask_irq(struct irq_data *d)
{

 davinci_cp_intc_write(1, DAVINCI_CP_INTC_HOST_ENABLE_IDX_CLR);
 davinci_cp_intc_write(d->hwirq, DAVINCI_CP_INTC_SYS_ENABLE_IDX_CLR);
 davinci_cp_intc_write(1, DAVINCI_CP_INTC_HOST_ENABLE_IDX_SET);
}
