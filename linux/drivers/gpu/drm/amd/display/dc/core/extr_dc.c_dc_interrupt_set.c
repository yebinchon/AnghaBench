
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dc {TYPE_1__* res_pool; } ;
typedef enum dc_irq_source { ____Placeholder_dc_irq_source } dc_irq_source ;
struct TYPE_2__ {int irqs; } ;


 int dal_irq_service_set (int ,int,int) ;

bool dc_interrupt_set(struct dc *dc, enum dc_irq_source src, bool enable)
{

 if (dc == ((void*)0))
  return 0;

 return dal_irq_service_set(dc->res_pool->irqs, src, enable);
}
