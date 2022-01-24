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
struct irq_list_head {int /*<<< orphan*/  work; int /*<<< orphan*/  head; } ;
struct TYPE_2__ {int /*<<< orphan*/ * irq_handler_list_high_tab; struct irq_list_head* irq_handler_list_low_tab; int /*<<< orphan*/  irq_handler_list_table_lock; } ;
struct amdgpu_device {TYPE_1__ dm; } ;

/* Variables and functions */
 int DAL_IRQ_SOURCES_NUMBER ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dm_irq_work_func ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct amdgpu_device *adev)
{
	int src;
	struct irq_list_head *lh;

	FUNC0("DM_IRQ\n");

	FUNC3(&adev->dm.irq_handler_list_table_lock);

	for (src = 0; src < DAL_IRQ_SOURCES_NUMBER; src++) {
		/* low context handler list init */
		lh = &adev->dm.irq_handler_list_low_tab[src];
		FUNC1(&lh->head);
		FUNC2(&lh->work, dm_irq_work_func);

		/* high context handler init */
		FUNC1(&adev->dm.irq_handler_list_high_tab[src]);
	}

	return 0;
}