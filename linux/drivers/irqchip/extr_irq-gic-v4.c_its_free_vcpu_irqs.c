
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct its_vm {int fwnode; int domain; int nr_vpes; TYPE_1__** vpes; } ;
struct TYPE_2__ {int irq; } ;


 int irq_domain_free_fwnode (int ) ;
 int irq_domain_free_irqs (int ,int ) ;
 int irq_domain_remove (int ) ;

void its_free_vcpu_irqs(struct its_vm *vm)
{
 irq_domain_free_irqs(vm->vpes[0]->irq, vm->nr_vpes);
 irq_domain_remove(vm->domain);
 irq_domain_free_fwnode(vm->fwnode);
}
