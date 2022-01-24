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
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pp_hwmgr*) ; 
 int FUNC2 (struct pp_hwmgr*) ; 
 int FUNC3 (struct pp_hwmgr*) ; 
 int FUNC4 (struct pp_hwmgr*) ; 
 int FUNC5 (struct pp_hwmgr*) ; 
 int FUNC6 (struct pp_hwmgr*) ; 
 int FUNC7 (struct pp_hwmgr*) ; 

__attribute__((used)) static int FUNC8(struct pp_hwmgr *hwmgr)
{
	int tmp_result, result = 0;

	FUNC1(hwmgr);

	tmp_result = FUNC7(hwmgr);
	FUNC0((0 == tmp_result),
			"Failed to read clock registers!", result = tmp_result);

	tmp_result = FUNC4(hwmgr);
	FUNC0((0 == tmp_result),
			"Failed to get memory type!", result = tmp_result);

	tmp_result = FUNC2(hwmgr);
	FUNC0((0 == tmp_result),
			"Failed to enable ACPI power management!", result = tmp_result);

	tmp_result = FUNC5(hwmgr);
	FUNC0((0 == tmp_result),
			"Failed to init power gate state!", result = tmp_result);

	tmp_result = FUNC3(hwmgr);
	FUNC0((0 == tmp_result),
			"Failed to get MC microcode version!", result = tmp_result);

	tmp_result = FUNC6(hwmgr);
	FUNC0((0 == tmp_result),
			"Failed to init sclk threshold!", result = tmp_result);

	return result;
}