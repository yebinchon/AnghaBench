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
struct mbi_range {int spi_start; int /*<<< orphan*/  nr_spis; int /*<<< orphan*/  bm; } ;
struct irq_domain {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  desc; } ;
typedef  TYPE_1__ msi_alloc_info_t ;

/* Variables and functions */
 int ENOSPC ; 
 scalar_t__ GICD_SETSPI_NSR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_domain*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_domain*,unsigned int,int,int /*<<< orphan*/ *,struct mbi_range*) ; 
 int /*<<< orphan*/  FUNC5 (struct mbi_range*,int,unsigned int) ; 
 int /*<<< orphan*/  mbi_irq_chip ; 
 int FUNC6 (struct irq_domain*,unsigned int,int) ; 
 int /*<<< orphan*/  mbi_lock ; 
 scalar_t__ mbi_phys_base ; 
 int mbi_range_nr ; 
 struct mbi_range* mbi_ranges ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct irq_domain *domain, unsigned int virq,
				   unsigned int nr_irqs, void *args)
{
	msi_alloc_info_t *info = args;
	struct mbi_range *mbi = NULL;
	int hwirq, offset, i, err = 0;

	FUNC7(&mbi_lock);
	for (i = 0; i < mbi_range_nr; i++) {
		offset = FUNC0(mbi_ranges[i].bm,
						 mbi_ranges[i].nr_spis,
						 FUNC1(nr_irqs));
		if (offset >= 0) {
			mbi = &mbi_ranges[i];
			break;
		}
	}
	FUNC8(&mbi_lock);

	if (!mbi)
		return -ENOSPC;

	hwirq = mbi->spi_start + offset;

	err = FUNC2(info->desc,
				    mbi_phys_base + GICD_SETSPI_NSR);
	if (err)
		return err;

	for (i = 0; i < nr_irqs; i++) {
		err = FUNC6(domain, virq + i, hwirq + i);
		if (err)
			goto fail;

		FUNC4(domain, virq + i, hwirq + i,
					      &mbi_irq_chip, mbi);
	}

	return 0;

fail:
	FUNC3(domain, virq, nr_irqs);
	FUNC5(mbi, hwirq, nr_irqs);
	return err;
}