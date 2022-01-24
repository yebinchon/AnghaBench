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
typedef  int /*<<< orphan*/  u32 ;
struct hfi1_devdata {scalar_t__ icode; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 scalar_t__ ICODE_FUNCTIONAL_SIMULATOR ; 
 int FUNC0 (struct hfi1_devdata*) ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

int FUNC4(struct hfi1_devdata *dd, u32 mstimeout)
{
	unsigned long timeout;

	/* in the simulator, the fake 8051 is always ready */
	if (dd->icode == ICODE_FUNCTIONAL_SIMULATOR)
		return 0;

	timeout = FUNC1(mstimeout) + jiffies;
	while (1) {
		if (FUNC0(dd) == 0xa0)	/* ready */
			return 0;
		if (FUNC2(jiffies, timeout))	/* timed out */
			return -ETIMEDOUT;
		FUNC3(1950, 2050); /* sleep 2ms-ish */
	}
}