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
typedef  enum zynqmp_pm_reset_action { ____Placeholder_zynqmp_pm_reset_action } zynqmp_pm_reset_action ;
typedef  enum zynqmp_pm_reset { ____Placeholder_zynqmp_pm_reset } zynqmp_pm_reset ;

/* Variables and functions */
 int /*<<< orphan*/  PM_RESET_ASSERT ; 
 int FUNC0 (int /*<<< orphan*/ ,int const,int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(const enum zynqmp_pm_reset reset,
				  const enum zynqmp_pm_reset_action assert_flag)
{
	return FUNC0(PM_RESET_ASSERT, reset, assert_flag,
				   0, 0, NULL);
}