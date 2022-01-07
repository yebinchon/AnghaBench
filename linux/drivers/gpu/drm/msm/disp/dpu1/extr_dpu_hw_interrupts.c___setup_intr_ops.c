
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpu_hw_intr_ops {int get_interrupt_status; int clear_intr_status_nolock; int get_interrupt_statuses; int disable_all_irqs; int clear_all_irqs; int dispatch_irqs; int disable_irq; int enable_irq; int irq_idx_lookup; } ;


 int dpu_hw_intr_clear_intr_status_nolock ;
 int dpu_hw_intr_clear_irqs ;
 int dpu_hw_intr_disable_irq ;
 int dpu_hw_intr_disable_irqs ;
 int dpu_hw_intr_dispatch_irq ;
 int dpu_hw_intr_enable_irq ;
 int dpu_hw_intr_get_interrupt_status ;
 int dpu_hw_intr_get_interrupt_statuses ;
 int dpu_hw_intr_irqidx_lookup ;

__attribute__((used)) static void __setup_intr_ops(struct dpu_hw_intr_ops *ops)
{
 ops->irq_idx_lookup = dpu_hw_intr_irqidx_lookup;
 ops->enable_irq = dpu_hw_intr_enable_irq;
 ops->disable_irq = dpu_hw_intr_disable_irq;
 ops->dispatch_irqs = dpu_hw_intr_dispatch_irq;
 ops->clear_all_irqs = dpu_hw_intr_clear_irqs;
 ops->disable_all_irqs = dpu_hw_intr_disable_irqs;
 ops->get_interrupt_statuses = dpu_hw_intr_get_interrupt_statuses;
 ops->clear_intr_status_nolock = dpu_hw_intr_clear_intr_status_nolock;
 ops->get_interrupt_status = dpu_hw_intr_get_interrupt_status;
}
