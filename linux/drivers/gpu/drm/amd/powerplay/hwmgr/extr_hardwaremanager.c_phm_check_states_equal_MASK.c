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
struct pp_hwmgr {TYPE_1__* hwmgr_func; } ;
struct pp_hw_power_state {int dummy; } ;
struct TYPE_2__ {int (* check_states_equal ) (struct pp_hwmgr*,struct pp_hw_power_state const*,struct pp_hw_power_state const*,int*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct pp_hwmgr*) ; 
 int FUNC1 (struct pp_hwmgr*,struct pp_hw_power_state const*,struct pp_hw_power_state const*,int*) ; 

int FUNC2(struct pp_hwmgr *hwmgr,
				 const struct pp_hw_power_state *pstate1,
				 const struct pp_hw_power_state *pstate2,
				 bool *equal)
{
	FUNC0(hwmgr);

	if (hwmgr->hwmgr_func->check_states_equal == NULL)
		return -EINVAL;

	return hwmgr->hwmgr_func->check_states_equal(hwmgr, pstate1, pstate2, equal);
}