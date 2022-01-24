#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct its_vm {unsigned long* db_bitmap; int db_lpi_base; int nr_db_lpis; TYPE_1__** vpes; struct page* vprop_page; } ;
struct irq_domain {int dummy; } ;
struct TYPE_3__ {int vpe_db_lpi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct irq_domain*,unsigned int,int,int /*<<< orphan*/ *,TYPE_1__*) ; 
 struct page* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int FUNC4 (struct irq_domain*,unsigned int,int) ; 
 unsigned long* FUNC5 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long*,int,int) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  its_vpe_irq_chip ; 
 int /*<<< orphan*/  FUNC8 (struct irq_domain*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int,unsigned long*) ; 

__attribute__((used)) static int FUNC11(struct irq_domain *domain, unsigned int virq,
				    unsigned int nr_irqs, void *args)
{
	struct its_vm *vm = args;
	unsigned long *bitmap;
	struct page *vprop_page;
	int base, nr_ids, i, err = 0;

	FUNC0(!vm);

	bitmap = FUNC5(FUNC9(nr_irqs), &base, &nr_ids);
	if (!bitmap)
		return -ENOMEM;

	if (nr_ids < nr_irqs) {
		FUNC6(bitmap, base, nr_ids);
		return -ENOMEM;
	}

	vprop_page = FUNC2(GFP_KERNEL);
	if (!vprop_page) {
		FUNC6(bitmap, base, nr_ids);
		return -ENOMEM;
	}

	vm->db_bitmap = bitmap;
	vm->db_lpi_base = base;
	vm->nr_db_lpis = nr_ids;
	vm->vprop_page = vprop_page;

	for (i = 0; i < nr_irqs; i++) {
		vm->vpes[i]->vpe_db_lpi = base + i;
		err = FUNC7(vm->vpes[i]);
		if (err)
			break;
		err = FUNC4(domain, virq + i,
					       vm->vpes[i]->vpe_db_lpi);
		if (err)
			break;
		FUNC1(domain, virq + i, i,
					      &its_vpe_irq_chip, vm->vpes[i]);
		FUNC10(i, bitmap);
	}

	if (err) {
		if (i > 0)
			FUNC8(domain, virq, i - 1);

		FUNC6(bitmap, base, nr_ids);
		FUNC3(vprop_page);
	}

	return err;
}