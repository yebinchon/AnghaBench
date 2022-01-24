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
struct list_head {int dummy; } ;
struct TYPE_4__ {TYPE_1__* irq_handler_list_low_tab; int /*<<< orphan*/  dc; struct list_head* irq_handler_list_high_tab; } ;
struct amdgpu_device {TYPE_2__ dm; } ;
struct TYPE_3__ {int /*<<< orphan*/  work; struct list_head head; } ;

/* Variables and functions */
 int DC_IRQ_SOURCE_HPD1 ; 
 int DC_IRQ_SOURCE_HPD6RX ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct list_head*) ; 

int FUNC6(struct amdgpu_device *adev)
{
	int src;
	struct list_head *hnd_list_h;
	struct list_head *hnd_list_l;
	unsigned long irq_table_flags;

	FUNC0(adev, irq_table_flags);

	FUNC2("DM_IRQ: suspend\n");

	/**
	 * Disable HW interrupt  for HPD and HPDRX only since FLIP and VBLANK
	 * will be disabled from manage_dm_interrupts on disable CRTC.
	 */
	for (src = DC_IRQ_SOURCE_HPD1; src <= DC_IRQ_SOURCE_HPD6RX; src++) {
		hnd_list_l = &adev->dm.irq_handler_list_low_tab[src].head;
		hnd_list_h = &adev->dm.irq_handler_list_high_tab[src];
		if (!FUNC5(hnd_list_l) || !FUNC5(hnd_list_h))
			FUNC3(adev->dm.dc, src, false);

		FUNC1(adev, irq_table_flags);
		FUNC4(&adev->dm.irq_handler_list_low_tab[src].work);

		FUNC0(adev, irq_table_flags);
	}

	FUNC1(adev, irq_table_flags);
	return 0;
}