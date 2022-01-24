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
struct pp_clock_levels_with_latency {int dummy; } ;
typedef  enum amd_pp_clock_type { ____Placeholder_amd_pp_clock_type } amd_pp_clock_type ;

/* Variables and functions */
#define  amd_pp_dcef_clock 131 
#define  amd_pp_mem_clock 130 
#define  amd_pp_soc_clock 129 
#define  amd_pp_sys_clock 128 
 int /*<<< orphan*/  FUNC0 (struct pp_hwmgr*,struct pp_clock_levels_with_latency*) ; 
 int /*<<< orphan*/  FUNC1 (struct pp_hwmgr*,struct pp_clock_levels_with_latency*) ; 
 int /*<<< orphan*/  FUNC2 (struct pp_hwmgr*,struct pp_clock_levels_with_latency*) ; 
 int /*<<< orphan*/  FUNC3 (struct pp_hwmgr*,struct pp_clock_levels_with_latency*) ; 

__attribute__((used)) static int FUNC4(struct pp_hwmgr *hwmgr,
		enum amd_pp_clock_type type,
		struct pp_clock_levels_with_latency *clocks)
{
	switch (type) {
	case amd_pp_sys_clock:
		FUNC2(hwmgr, clocks);
		break;
	case amd_pp_mem_clock:
		FUNC1(hwmgr, clocks);
		break;
	case amd_pp_dcef_clock:
		FUNC0(hwmgr, clocks);
		break;
	case amd_pp_soc_clock:
		FUNC3(hwmgr, clocks);
		break;
	default:
		return -1;
	}

	return 0;
}