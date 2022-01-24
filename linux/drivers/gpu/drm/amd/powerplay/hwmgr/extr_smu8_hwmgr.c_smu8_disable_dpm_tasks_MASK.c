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
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC1 (struct pp_hwmgr*) ; 
 scalar_t__ FUNC2 (struct pp_hwmgr*) ; 

__attribute__((used)) static int FUNC3(struct pp_hwmgr *hwmgr)
{
	FUNC1(hwmgr);

	FUNC0(hwmgr);
	if (FUNC2(hwmgr))
		return -EINVAL;

	return 0;
}