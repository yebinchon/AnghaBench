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
 int FUNC2 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC3 (struct pp_hwmgr*) ; 
 int FUNC4 (struct pp_hwmgr*) ; 
 int FUNC5 (struct pp_hwmgr*) ; 
 int FUNC6 (struct pp_hwmgr*) ; 

__attribute__((used)) static int FUNC7(struct pp_hwmgr *hwmgr)
{
	int ret;

	ret = FUNC6(hwmgr);
	if (ret)
		return ret;
	ret = FUNC2(hwmgr);
	if (ret)
		return ret;
	ret = FUNC4(hwmgr);
	if (ret)
		return ret;
	ret = FUNC5(hwmgr);
	if (ret)
		return ret;
	ret = FUNC0(hwmgr);
	if (ret)
		return ret;

	FUNC1(hwmgr);
	FUNC3(hwmgr);

	return 0;
}