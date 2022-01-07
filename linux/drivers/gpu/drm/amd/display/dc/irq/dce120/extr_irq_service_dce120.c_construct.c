
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_service_init_data {int dummy; } ;
struct irq_service {int * funcs; int info; } ;


 int dal_irq_service_construct (struct irq_service*,struct irq_service_init_data*) ;
 int irq_service_funcs_dce120 ;
 int irq_source_info_dce120 ;

__attribute__((used)) static void construct(
 struct irq_service *irq_service,
 struct irq_service_init_data *init_data)
{
 dal_irq_service_construct(irq_service, init_data);

 irq_service->info = irq_source_info_dce120;
 irq_service->funcs = &irq_service_funcs_dce120;
}
