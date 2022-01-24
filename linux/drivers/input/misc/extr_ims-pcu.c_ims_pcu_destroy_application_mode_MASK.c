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
struct ims_pcu {int setup_complete; scalar_t__ device_id; TYPE_1__* dev; scalar_t__ gamepad; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 scalar_t__ IMS_PCU_PCU_B_DEVICE_ID ; 
 int /*<<< orphan*/  FUNC0 (struct ims_pcu*) ; 
 int /*<<< orphan*/  FUNC1 (struct ims_pcu*) ; 
 int /*<<< orphan*/  FUNC2 (struct ims_pcu*) ; 
 int /*<<< orphan*/  ims_pcu_ofn_attr_group ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct ims_pcu *pcu)
{
	if (pcu->setup_complete) {
		pcu->setup_complete = false;
		FUNC3(); /* make sure flag setting is not reordered */

		if (pcu->gamepad)
			FUNC2(pcu);
		FUNC1(pcu);
		FUNC0(pcu);

		if (pcu->device_id != IMS_PCU_PCU_B_DEVICE_ID)
			FUNC4(&pcu->dev->kobj,
					   &ims_pcu_ofn_attr_group);
	}
}