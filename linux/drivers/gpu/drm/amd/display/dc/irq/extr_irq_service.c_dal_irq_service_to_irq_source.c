
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct irq_service {TYPE_1__* funcs; } ;
typedef enum dc_irq_source { ____Placeholder_dc_irq_source } dc_irq_source ;
struct TYPE_2__ {int (* to_dal_irq_source ) (struct irq_service*,int ,int ) ;} ;


 int stub1 (struct irq_service*,int ,int ) ;

enum dc_irq_source dal_irq_service_to_irq_source(
  struct irq_service *irq_service,
  uint32_t src_id,
  uint32_t ext_id)
{
 return irq_service->funcs->to_dal_irq_source(
  irq_service,
  src_id,
  ext_id);
}
