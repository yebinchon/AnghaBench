
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct dc {TYPE_1__* res_pool; } ;
typedef enum dc_irq_source { ____Placeholder_dc_irq_source } dc_irq_source ;
struct TYPE_2__ {int irqs; } ;


 int dal_irq_service_to_irq_source (int ,int ,int ) ;

enum dc_irq_source dc_interrupt_to_irq_source(
  struct dc *dc,
  uint32_t src_id,
  uint32_t ext_id)
{
 return dal_irq_service_to_irq_source(dc->res_pool->irqs, src_id, ext_id);
}
