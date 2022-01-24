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
 int FUNC0 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC1 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC2 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC3 (struct pp_hwmgr*,void const*) ; 
 int /*<<< orphan*/  FUNC4 (struct pp_hwmgr*) ; 

__attribute__((used)) static int FUNC5(struct pp_hwmgr *hwmgr, const void *input)
{
	int ret = 0;

	FUNC4(hwmgr);
	FUNC1(hwmgr);
	FUNC2(hwmgr);
	ret = FUNC0(hwmgr);
	if (ret)
		return ret;
	FUNC3(hwmgr, input);

	return 0;
}