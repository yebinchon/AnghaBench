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
typedef  int /*<<< orphan*/  uint64_t ;
struct pp_hwmgr {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PPSMC_MSG_GetEnabledSmuFeatures ; 
 int /*<<< orphan*/  FUNC0 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC1 (struct pp_hwmgr*,int /*<<< orphan*/ ) ; 

int FUNC2(struct pp_hwmgr *hwmgr,
			    uint64_t *features_enabled)
{
	if (features_enabled == NULL)
		return -EINVAL;

	FUNC1(hwmgr, PPSMC_MSG_GetEnabledSmuFeatures);
	*features_enabled = FUNC0(hwmgr);

	return 0;
}