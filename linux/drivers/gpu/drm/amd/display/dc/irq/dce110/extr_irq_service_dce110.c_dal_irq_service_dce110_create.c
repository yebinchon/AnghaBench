
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_service_init_data {int dummy; } ;
struct irq_service {int dummy; } ;


 int GFP_KERNEL ;
 int construct (struct irq_service*,struct irq_service_init_data*) ;
 struct irq_service* kzalloc (int,int ) ;

struct irq_service *
dal_irq_service_dce110_create(struct irq_service_init_data *init_data)
{
 struct irq_service *irq_service = kzalloc(sizeof(*irq_service),
        GFP_KERNEL);

 if (!irq_service)
  return ((void*)0);

 construct(irq_service, init_data);
 return irq_service;
}
