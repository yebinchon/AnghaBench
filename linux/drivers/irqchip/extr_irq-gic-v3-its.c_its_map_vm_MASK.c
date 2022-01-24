#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct its_vpe {int /*<<< orphan*/  col_idx; int /*<<< orphan*/  irq; } ;
struct its_vm {int* vlpi_count; int nr_vpes; struct its_vpe** vpes; } ;
struct its_node {size_t list_nr; } ;
struct irq_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  cpu_online_mask ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct irq_data*,int /*<<< orphan*/ ) ; 
 struct irq_data* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  its_list_map ; 
 int /*<<< orphan*/  FUNC4 (struct its_node*,struct its_vpe*) ; 
 int /*<<< orphan*/  FUNC5 (struct its_node*,struct its_vpe*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  vmovp_lock ; 

__attribute__((used)) static void FUNC8(struct its_node *its, struct its_vm *vm)
{
	unsigned long flags;

	/* Not using the ITS list? Everything is always mapped. */
	if (!its_list_map)
		return;

	FUNC6(&vmovp_lock, flags);

	/*
	 * If the VM wasn't mapped yet, iterate over the vpes and get
	 * them mapped now.
	 */
	vm->vlpi_count[its->list_nr]++;

	if (vm->vlpi_count[its->list_nr] == 1) {
		int i;

		for (i = 0; i < vm->nr_vpes; i++) {
			struct its_vpe *vpe = vm->vpes[i];
			struct irq_data *d = FUNC3(vpe->irq);

			/* Map the VPE to the first possible CPU */
			vpe->col_idx = FUNC0(cpu_online_mask);
			FUNC5(its, vpe, true);
			FUNC4(its, vpe);
			FUNC2(d, FUNC1(vpe->col_idx));
		}
	}

	FUNC7(&vmovp_lock, flags);
}