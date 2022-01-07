
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct its_vpe {int col_idx; int irq; } ;
struct its_vm {int* vlpi_count; int nr_vpes; struct its_vpe** vpes; } ;
struct its_node {size_t list_nr; } ;
struct irq_data {int dummy; } ;


 int cpu_online_mask ;
 int cpumask_first (int ) ;
 int cpumask_of (int ) ;
 int irq_data_update_effective_affinity (struct irq_data*,int ) ;
 struct irq_data* irq_get_irq_data (int ) ;
 int its_list_map ;
 int its_send_vinvall (struct its_node*,struct its_vpe*) ;
 int its_send_vmapp (struct its_node*,struct its_vpe*,int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int vmovp_lock ;

__attribute__((used)) static void its_map_vm(struct its_node *its, struct its_vm *vm)
{
 unsigned long flags;


 if (!its_list_map)
  return;

 raw_spin_lock_irqsave(&vmovp_lock, flags);





 vm->vlpi_count[its->list_nr]++;

 if (vm->vlpi_count[its->list_nr] == 1) {
  int i;

  for (i = 0; i < vm->nr_vpes; i++) {
   struct its_vpe *vpe = vm->vpes[i];
   struct irq_data *d = irq_get_irq_data(vpe->irq);


   vpe->col_idx = cpumask_first(cpu_online_mask);
   its_send_vmapp(its, vpe, 1);
   its_send_vinvall(its, vpe);
   irq_data_update_effective_affinity(d, cpumask_of(vpe->col_idx));
  }
 }

 raw_spin_unlock_irqrestore(&vmovp_lock, flags);
}
