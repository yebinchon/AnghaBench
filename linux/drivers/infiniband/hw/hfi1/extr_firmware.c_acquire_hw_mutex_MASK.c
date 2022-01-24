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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct hfi1_devdata {int hfi1_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASIC_CFG_MUTEX ; 
 int EBUSY ; 
 int /*<<< orphan*/  HM_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_devdata*,char*,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct hfi1_devdata*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct hfi1_devdata*,int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC7(struct hfi1_devdata *dd)
{
	unsigned long timeout;
	int try = 0;
	u8 mask = 1 << dd->hfi1_id;
	u8 user = (u8)FUNC4(dd, ASIC_CFG_MUTEX);

	if (user == mask) {
		FUNC1(dd,
			    "Hardware mutex already acquired, mutex mask %u\n",
			    (u32)mask);
		return 0;
	}

retry:
	timeout = FUNC2(HM_TIMEOUT) + jiffies;
	while (1) {
		FUNC6(dd, ASIC_CFG_MUTEX, mask);
		user = (u8)FUNC4(dd, ASIC_CFG_MUTEX);
		if (user == mask)
			return 0; /* success */
		if (FUNC5(jiffies, timeout))
			break; /* timed out */
		FUNC3(20);
	}

	/* timed out */
	FUNC0(dd,
		   "Unable to acquire hardware mutex, mutex mask %u, my mask %u (%s)\n",
		   (u32)user, (u32)mask, (try == 0) ? "retrying" : "giving up");

	if (try == 0) {
		/* break mutex and retry */
		FUNC6(dd, ASIC_CFG_MUTEX, 0);
		try++;
		goto retry;
	}

	return -EBUSY;
}