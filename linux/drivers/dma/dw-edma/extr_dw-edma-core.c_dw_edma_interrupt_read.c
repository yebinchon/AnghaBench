
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int dw_edma_interrupt (int,void*,int) ;

__attribute__((used)) static inline irqreturn_t dw_edma_interrupt_read(int irq, void *data)
{
 return dw_edma_interrupt(irq, data, 0);
}
