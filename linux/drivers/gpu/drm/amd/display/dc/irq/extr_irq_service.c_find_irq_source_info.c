
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_source_info {int dummy; } ;
struct irq_service {struct irq_source_info const* info; } ;
typedef enum dc_irq_source { ____Placeholder_dc_irq_source } dc_irq_source ;


 int DAL_IRQ_SOURCES_NUMBER ;
 int DC_IRQ_SOURCE_INVALID ;

const struct irq_source_info *find_irq_source_info(
 struct irq_service *irq_service,
 enum dc_irq_source source)
{
 if (source >= DAL_IRQ_SOURCES_NUMBER || source < DC_IRQ_SOURCE_INVALID)
  return ((void*)0);

 return &irq_service->info[source];
}
