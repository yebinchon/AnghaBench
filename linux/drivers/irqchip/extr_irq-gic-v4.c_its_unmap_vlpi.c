
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQ_DISABLE_UNLAZY ;
 int irq_clear_status_flags (int,int ) ;
 int irq_set_vcpu_affinity (int,int *) ;

int its_unmap_vlpi(int irq)
{
 irq_clear_status_flags(irq, IRQ_DISABLE_UNLAZY);
 return irq_set_vcpu_affinity(irq, ((void*)0));
}
