
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_soc {int domain; int irq_sync; int irq_err; } ;


 int IPU_NUM_IRQS ;
 int irq_dispose_mapping (int) ;
 int irq_domain_remove (int ) ;
 int irq_linear_revmap (int ,int) ;
 int irq_set_chained_handler_and_data (int ,int *,int *) ;

__attribute__((used)) static void ipu_irq_exit(struct ipu_soc *ipu)
{
 int i, irq;

 irq_set_chained_handler_and_data(ipu->irq_err, ((void*)0), ((void*)0));
 irq_set_chained_handler_and_data(ipu->irq_sync, ((void*)0), ((void*)0));



 for (i = 0; i < IPU_NUM_IRQS; i++) {
  irq = irq_linear_revmap(ipu->domain, i);
  if (irq)
   irq_dispose_mapping(irq);
 }

 irq_domain_remove(ipu->domain);
}
