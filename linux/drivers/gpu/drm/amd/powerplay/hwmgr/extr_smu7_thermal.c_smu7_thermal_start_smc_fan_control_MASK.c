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
struct pp_hwmgr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FDO_PWM_MODE_STATIC ; 
 int /*<<< orphan*/  PHM_PlatformCaps_MicrocodeFanControl ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pp_hwmgr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pp_hwmgr*) ; 

__attribute__((used)) static int FUNC3(struct pp_hwmgr *hwmgr)
{
/* If the fantable setup has failed we could have disabled
 * PHM_PlatformCaps_MicrocodeFanControl even after
 * this function was included in the table.
 * Make sure that we still think controlling the fan is OK.
*/
	if (FUNC0(PHM_PlatformCaps_MicrocodeFanControl)) {
		FUNC2(hwmgr);
		FUNC1(hwmgr, FDO_PWM_MODE_STATIC);
	}

	return 0;
}