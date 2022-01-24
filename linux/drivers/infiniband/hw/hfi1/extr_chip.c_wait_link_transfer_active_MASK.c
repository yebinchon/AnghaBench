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
typedef  scalar_t__ u64 ;
struct hfi1_devdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DC_LCB_STS_LINK_TRANSFER_ACTIVE ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*,char*) ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct hfi1_devdata*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct hfi1_devdata *dd, int wait_ms)
{
	u64 reg;
	unsigned long timeout;

	/* watch LCB_STS_LINK_TRANSFER_ACTIVE */
	timeout = jiffies + FUNC1(wait_ms);
	while (1) {
		reg = FUNC2(dd, DC_LCB_STS_LINK_TRANSFER_ACTIVE);
		if (reg)
			break;
		if (FUNC3(jiffies, timeout)) {
			FUNC0(dd,
				   "timeout waiting for LINK_TRANSFER_ACTIVE\n");
			return -ETIMEDOUT;
		}
		FUNC4(2);
	}
	return 0;
}