
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_service {int dummy; } ;


 int BREAK_TO_DEBUGGER () ;
 int kfree (struct irq_service*) ;

void dal_irq_service_destroy(struct irq_service **irq_service)
{
 if (!irq_service || !*irq_service) {
  BREAK_TO_DEBUGGER();
  return;
 }

 kfree(*irq_service);

 *irq_service = ((void*)0);
}
