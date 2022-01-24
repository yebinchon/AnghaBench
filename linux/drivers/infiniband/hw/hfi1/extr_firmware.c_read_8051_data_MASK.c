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
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
struct hfi1_devdata {int /*<<< orphan*/  dc8051_memlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DC_DC8051_CFG_RAM_ACCESS_CTRL ; 
 int /*<<< orphan*/  DC_DC8051_CFG_RAM_ACCESS_SETUP ; 
 int FUNC0 (struct hfi1_devdata*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct hfi1_devdata *dd, u32 addr, u32 len, u64 *result)
{
	unsigned long flags;
	u32 done;
	int ret = 0;

	FUNC1(&dd->dc8051_memlock, flags);

	/* data read set-up, no auto-increment */
	FUNC3(dd, DC_DC8051_CFG_RAM_ACCESS_SETUP, 0);

	for (done = 0; done < len; addr += 8, done += 8, result++) {
		ret = FUNC0(dd, addr, result);
		if (ret)
			break;
	}

	/* turn off read enable */
	FUNC3(dd, DC_DC8051_CFG_RAM_ACCESS_CTRL, 0);

	FUNC2(&dd->dc8051_memlock, flags);

	return ret;
}