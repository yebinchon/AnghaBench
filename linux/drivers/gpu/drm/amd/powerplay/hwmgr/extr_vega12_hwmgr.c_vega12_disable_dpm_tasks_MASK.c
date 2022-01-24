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
 int FUNC1 (struct pp_hwmgr*) ; 

__attribute__((used)) static int FUNC2(struct pp_hwmgr *hwmgr)
{
	int tmp_result, result = 0;

	tmp_result = FUNC1(hwmgr);
	FUNC0((tmp_result == 0),
			"Failed to disable all smu features!", result = tmp_result);

	return result;
}