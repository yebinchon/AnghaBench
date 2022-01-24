#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct work_struct {int dummy; } ;
struct TYPE_4__ {TYPE_1__* irq_handler_list_low_tab; } ;
struct amdgpu_device {TYPE_2__ dm; } ;
typedef  enum dc_irq_source { ____Placeholder_dc_irq_source } dc_irq_source ;
struct TYPE_3__ {struct work_struct work; int /*<<< orphan*/  head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct work_struct*) ; 

__attribute__((used)) static void FUNC5(struct amdgpu_device *adev,
					enum dc_irq_source irq_source)
{
	unsigned long irq_table_flags;
	struct work_struct *work = NULL;

	FUNC0(adev, irq_table_flags);

	if (!FUNC3(&adev->dm.irq_handler_list_low_tab[irq_source].head))
		work = &adev->dm.irq_handler_list_low_tab[irq_source].work;

	FUNC1(adev, irq_table_flags);

	if (work) {
		if (!FUNC4(work))
			FUNC2("amdgpu_dm_irq_schedule_work FAILED src %d\n",
						irq_source);
	}

}