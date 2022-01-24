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
 int /*<<< orphan*/  FIRMWARE_FLAGS ; 
 int /*<<< orphan*/  INTERRUPTS_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (struct pp_hwmgr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SMC_IND ; 
 int /*<<< orphan*/  FUNC1 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC2 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC3 (struct pp_hwmgr*) ; 

__attribute__((used)) static int FUNC4(struct pp_hwmgr *hwmgr)
{
	/* set smc instruct start point at 0x0 */
	FUNC3(hwmgr);

	/* enable smc clock */
	FUNC2(hwmgr);

	/* de-assert reset */
	FUNC1(hwmgr);

	FUNC0(hwmgr, SMC_IND, FIRMWARE_FLAGS,
				 INTERRUPTS_ENABLED, 1);

	return 0;
}