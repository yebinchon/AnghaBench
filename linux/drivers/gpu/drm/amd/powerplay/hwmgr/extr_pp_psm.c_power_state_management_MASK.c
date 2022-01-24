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
struct pp_power_state {int /*<<< orphan*/  hardware; } ;
struct pp_hwmgr {int /*<<< orphan*/  ps_size; struct pp_power_state* request_ps; struct pp_power_state* current_ps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pp_power_state*,struct pp_power_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pp_hwmgr*,struct pp_power_state*,struct pp_power_state*) ; 
 scalar_t__ FUNC2 (struct pp_hwmgr*) ; 
 scalar_t__ FUNC3 (struct pp_hwmgr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct pp_hwmgr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct pp_hwmgr *hwmgr,
						struct pp_power_state *new_ps)
{
	struct pp_power_state *pcurrent;
	struct pp_power_state *requested;
	bool equal;

	if (new_ps != NULL)
		requested = new_ps;
	else
		requested = hwmgr->request_ps;

	pcurrent = hwmgr->current_ps;

	FUNC1(hwmgr, requested, pcurrent);
	if (pcurrent == NULL || (0 != FUNC3(hwmgr,
			&pcurrent->hardware, &requested->hardware, &equal)))
		equal = false;

	if (!equal || FUNC2(hwmgr)) {
		FUNC4(hwmgr, &pcurrent->hardware, &requested->hardware);
		FUNC0(hwmgr->current_ps, hwmgr->request_ps, hwmgr->ps_size);
	}
}