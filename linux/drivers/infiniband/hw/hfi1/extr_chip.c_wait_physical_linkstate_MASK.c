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
typedef  scalar_t__ u32 ;
struct hfi1_pportdata {int /*<<< orphan*/  dd; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_pportdata*,scalar_t__) ; 
 unsigned long FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct hfi1_pportdata *ppd, u32 state,
				   int msecs)
{
	u32 read_state;
	unsigned long timeout;

	timeout = jiffies + FUNC2(msecs);
	while (1) {
		read_state = FUNC3(ppd->dd);
		if (read_state == state)
			break;
		if (FUNC4(jiffies, timeout)) {
			FUNC0(ppd->dd,
				   "timeout waiting for phy link state 0x%x\n",
				   state);
			return -ETIMEDOUT;
		}
		FUNC5(1950, 2050); /* sleep 2ms-ish */
	}

	FUNC1(ppd, state);
	return 0;
}