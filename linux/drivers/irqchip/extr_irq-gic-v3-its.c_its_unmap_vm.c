
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct its_vm {int nr_vpes; int * vpes; int * vlpi_count; } ;
struct its_node {size_t list_nr; } ;


 int its_list_map ;
 int its_send_vmapp (struct its_node*,int ,int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int vmovp_lock ;

__attribute__((used)) static void its_unmap_vm(struct its_node *its, struct its_vm *vm)
{
 unsigned long flags;


 if (!its_list_map)
  return;

 raw_spin_lock_irqsave(&vmovp_lock, flags);

 if (!--vm->vlpi_count[its->list_nr]) {
  int i;

  for (i = 0; i < vm->nr_vpes; i++)
   its_send_vmapp(its, vm->vpes[i], 0);
 }

 raw_spin_unlock_irqrestore(&vmovp_lock, flags);
}
