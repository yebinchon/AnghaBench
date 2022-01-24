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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 unsigned long jiffies ; 
 unsigned long FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct hfi1_pportdata *ppd, u32 state,
				  int msecs)
{
	unsigned long timeout;
	u32 new_state;

	timeout = jiffies + FUNC2(msecs);
	while (1) {
		new_state = FUNC0(ppd->dd,
					       FUNC4(ppd->dd));
		if (new_state == state)
			break;
		if (FUNC5(jiffies, timeout)) {
			FUNC1(ppd->dd,
				   "timeout waiting for link state 0x%x\n",
				   state);
			return -ETIMEDOUT;
		}
		FUNC3(20);
	}

	return 0;
}