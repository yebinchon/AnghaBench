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
struct cc_drvdata {scalar_t__ hw_rev; } ;

/* Variables and functions */
 unsigned int CC_HW_RESET_LOOP_COUNT ; 
 scalar_t__ CC_HW_REV_712 ; 
 unsigned int CC_NVM_IS_IDLE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NVM_IS_IDLE ; 
 unsigned int FUNC1 (struct cc_drvdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

bool FUNC3(struct cc_drvdata *drvdata)
{
	unsigned int val;
	unsigned int i;

	/* 712/710/63 has no reset completion indication, always return true */
	if (drvdata->hw_rev <= CC_HW_REV_712)
		return true;

	for (i = 0; i < CC_HW_RESET_LOOP_COUNT; i++) {
		/* in cc7x3 NVM_IS_IDLE indicates that CC reset is
		 *  completed and device is fully functional
		 */
		val = FUNC1(drvdata, FUNC0(NVM_IS_IDLE));
		if (val & CC_NVM_IS_IDLE_MASK) {
			/* hw indicate reset completed */
			return true;
		}
		/* allow scheduling other process on the processor */
		FUNC2();
	}
	/* reset not completed */
	return false;
}