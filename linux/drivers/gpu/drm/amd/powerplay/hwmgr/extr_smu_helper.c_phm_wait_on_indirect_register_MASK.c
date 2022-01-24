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
typedef  scalar_t__ uint32_t ;
struct pp_hwmgr {int /*<<< orphan*/ * device; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int FUNC1 (struct pp_hwmgr*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int FUNC3(struct pp_hwmgr *hwmgr,
				uint32_t indirect_port,
				uint32_t index,
				uint32_t value,
				uint32_t mask)
{
	if (hwmgr == NULL || hwmgr->device == NULL) {
		FUNC2("Invalid Hardware Manager!");
		return -EINVAL;
	}

	FUNC0(hwmgr->device, indirect_port, index);
	return FUNC1(hwmgr, indirect_port + 1, mask, value);
}