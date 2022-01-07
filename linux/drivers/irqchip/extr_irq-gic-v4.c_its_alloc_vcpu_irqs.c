
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct its_vm {int nr_vpes; scalar_t__ fwnode; scalar_t__ domain; TYPE_1__** vpes; } ;
struct TYPE_2__ {int idai; int irq; struct its_vm* its_vm; } ;


 int ENOMEM ;
 int NUMA_NO_NODE ;
 int __irq_domain_alloc_irqs (scalar_t__,int,int,int ,struct its_vm*,int,int *) ;
 int current ;
 int gic_domain ;
 scalar_t__ irq_domain_alloc_named_id_fwnode (char*,int ) ;
 scalar_t__ irq_domain_create_hierarchy (int ,int ,int,scalar_t__,int ,struct its_vm*) ;
 int irq_domain_free_fwnode (scalar_t__) ;
 int irq_domain_remove (scalar_t__) ;
 int task_pid_nr (int ) ;
 int vpe_domain_ops ;

int its_alloc_vcpu_irqs(struct its_vm *vm)
{
 int vpe_base_irq, i;

 vm->fwnode = irq_domain_alloc_named_id_fwnode("GICv4-vpe",
            task_pid_nr(current));
 if (!vm->fwnode)
  goto err;

 vm->domain = irq_domain_create_hierarchy(gic_domain, 0, vm->nr_vpes,
       vm->fwnode, vpe_domain_ops,
       vm);
 if (!vm->domain)
  goto err;

 for (i = 0; i < vm->nr_vpes; i++) {
  vm->vpes[i]->its_vm = vm;
  vm->vpes[i]->idai = 1;
 }

 vpe_base_irq = __irq_domain_alloc_irqs(vm->domain, -1, vm->nr_vpes,
            NUMA_NO_NODE, vm,
            0, ((void*)0));
 if (vpe_base_irq <= 0)
  goto err;

 for (i = 0; i < vm->nr_vpes; i++)
  vm->vpes[i]->irq = vpe_base_irq + i;

 return 0;

err:
 if (vm->domain)
  irq_domain_remove(vm->domain);
 if (vm->fwnode)
  irq_domain_free_fwnode(vm->fwnode);

 return -ENOMEM;
}
