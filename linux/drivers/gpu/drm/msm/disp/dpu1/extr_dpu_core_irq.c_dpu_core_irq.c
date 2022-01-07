
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dpu_kms {TYPE_2__* hw_intr; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int (* dispatch_irqs ) (TYPE_2__*,int ,struct dpu_kms*) ;int (* get_interrupt_statuses ) (TYPE_2__*) ;} ;
struct TYPE_5__ {TYPE_1__ ops; } ;


 int IRQ_HANDLED ;
 int dpu_core_irq_callback_handler ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_2__*,int ,struct dpu_kms*) ;

irqreturn_t dpu_core_irq(struct dpu_kms *dpu_kms)
{







 dpu_kms->hw_intr->ops.get_interrupt_statuses(dpu_kms->hw_intr);
 dpu_kms->hw_intr->ops.dispatch_irqs(
   dpu_kms->hw_intr,
   dpu_core_irq_callback_handler,
   dpu_kms);

 return IRQ_HANDLED;
}
