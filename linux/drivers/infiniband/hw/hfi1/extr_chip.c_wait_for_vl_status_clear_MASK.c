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
typedef  int u64 ;
struct hfi1_devdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SEND_CM_CREDIT_USED_STATUS ; 
 int /*<<< orphan*/  VL_STATUS_CLEAR_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*,char*,...) ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hfi1_devdata*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct hfi1_devdata *dd, u64 mask,
				     const char *which)
{
	unsigned long timeout;
	u64 reg;

	timeout = jiffies + FUNC1(VL_STATUS_CLEAR_TIMEOUT);
	while (1) {
		reg = FUNC2(dd, SEND_CM_CREDIT_USED_STATUS) & mask;

		if (reg == 0)
			return;	/* success */
		if (FUNC3(jiffies, timeout))
			break;		/* timed out */
		FUNC4(1);
	}

	FUNC0(dd,
		   "%s credit change status not clearing after %dms, mask 0x%llx, not clear 0x%llx\n",
		   which, VL_STATUS_CLEAR_TIMEOUT, mask, reg);
	/*
	 * If this occurs, it is likely there was a credit loss on the link.
	 * The only recovery from that is a link bounce.
	 */
	FUNC0(dd,
		   "Continuing anyway.  A credit loss may occur.  Suggest a link bounce\n");
}