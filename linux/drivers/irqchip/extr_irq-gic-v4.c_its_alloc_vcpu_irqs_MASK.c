#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct its_vm {int nr_vpes; scalar_t__ fwnode; scalar_t__ domain; TYPE_1__** vpes; } ;
struct TYPE_2__ {int idai; int irq; struct its_vm* its_vm; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  NUMA_NO_NODE ; 
 int FUNC0 (scalar_t__,int,int,int /*<<< orphan*/ ,struct its_vm*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  gic_domain ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ,struct its_vm*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vpe_domain_ops ; 

int FUNC6(struct its_vm *vm)
{
	int vpe_base_irq, i;

	vm->fwnode = FUNC1("GICv4-vpe",
						      FUNC5(current));
	if (!vm->fwnode)
		goto err;

	vm->domain = FUNC2(gic_domain, 0, vm->nr_vpes,
						 vm->fwnode, vpe_domain_ops,
						 vm);
	if (!vm->domain)
		goto err;

	for (i = 0; i < vm->nr_vpes; i++) {
		vm->vpes[i]->its_vm = vm;
		vm->vpes[i]->idai = true;
	}

	vpe_base_irq = FUNC0(vm->domain, -1, vm->nr_vpes,
					       NUMA_NO_NODE, vm,
					       false, NULL);
	if (vpe_base_irq <= 0)
		goto err;

	for (i = 0; i < vm->nr_vpes; i++)
		vm->vpes[i]->irq = vpe_base_irq + i;

	return 0;

err:
	if (vm->domain)
		FUNC4(vm->domain);
	if (vm->fwnode)
		FUNC3(vm->fwnode);

	return -ENOMEM;
}