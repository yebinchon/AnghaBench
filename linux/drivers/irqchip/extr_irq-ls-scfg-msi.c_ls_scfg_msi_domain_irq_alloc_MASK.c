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
struct ls_scfg_msi {int irqs_num; int /*<<< orphan*/  msiir_addr; int /*<<< orphan*/  lock; int /*<<< orphan*/  used; } ;
struct irq_domain {struct ls_scfg_msi* host_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  desc; } ;
typedef  TYPE_1__ msi_alloc_info_t ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  handle_simple_irq ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_domain*,unsigned int,int,int /*<<< orphan*/ *,struct ls_scfg_msi*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ls_scfg_msi_parent_chip ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct irq_domain *domain,
					unsigned int virq,
					unsigned int nr_irqs,
					void *args)
{
	msi_alloc_info_t *info = args;
	struct ls_scfg_msi *msi_data = domain->host_data;
	int pos, err = 0;

	FUNC0(nr_irqs != 1);

	FUNC5(&msi_data->lock);
	pos = FUNC2(msi_data->used, msi_data->irqs_num);
	if (pos < msi_data->irqs_num)
		FUNC1(pos, msi_data->used);
	else
		err = -ENOSPC;
	FUNC6(&msi_data->lock);

	if (err)
		return err;

	err = FUNC3(info->desc, msi_data->msiir_addr);
	if (err)
		return err;

	FUNC4(domain, virq, pos,
			    &ls_scfg_msi_parent_chip, msi_data,
			    handle_simple_irq, NULL, NULL);

	return 0;
}