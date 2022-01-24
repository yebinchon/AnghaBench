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
struct hfi1_devdata {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (struct hfi1_devdata*,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

int FUNC4(struct hfi1_devdata *dd, u32 resource, u32 mswait)
{
	unsigned long timeout;
	int ret;

	timeout = jiffies + FUNC1(mswait);
	while (1) {
		ret = FUNC0(dd, resource);
		if (ret != -EBUSY)
			return ret;
		/* resource is busy, check our timeout */
		if (FUNC2(jiffies, timeout))
			return -EBUSY;
		FUNC3(80, 120);	/* arbitrary delay */
	}
}