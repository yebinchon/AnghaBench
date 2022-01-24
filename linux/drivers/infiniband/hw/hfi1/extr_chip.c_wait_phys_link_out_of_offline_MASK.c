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
typedef  int u32 ;
struct hfi1_pportdata {int /*<<< orphan*/  dd; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int PLS_OFFLINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_pportdata*,int) ; 
 unsigned long FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct hfi1_pportdata *ppd,
					 int msecs)
{
	u32 read_state;
	unsigned long timeout;

	timeout = jiffies + FUNC2(msecs);
	while (1) {
		read_state = FUNC3(ppd->dd);
		if ((read_state & 0xF0) != PLS_OFFLINE)
			break;
		if (FUNC4(jiffies, timeout)) {
			FUNC0(ppd->dd,
				   "timeout waiting for phy link out of offline. Read state 0x%x, %dms\n",
				   read_state, msecs);
			return -ETIMEDOUT;
		}
		FUNC5(1950, 2050); /* sleep 2ms-ish */
	}

	FUNC1(ppd, read_state);
	return read_state;
}