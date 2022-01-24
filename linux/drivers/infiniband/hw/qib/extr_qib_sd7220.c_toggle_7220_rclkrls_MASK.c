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
struct qib_devdata {int /*<<< orphan*/  pport; int /*<<< orphan*/  (* f_xgxs_reset ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EPB_GLOBAL_WR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct qib_devdata*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct qib_devdata*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5(struct qib_devdata *dd)
{
	int loc = FUNC0(0) | EPB_GLOBAL_WR;
	int ret;

	ret = FUNC1(dd, loc, 0, 0x80);
	if (ret < 0)
		FUNC2(dd, "RCLKRLS failed to clear D7\n");
	else {
		FUNC4(1);
		FUNC1(dd, loc, 0x80, 0x80);
	}
	/* And again for good measure */
	FUNC4(1);
	ret = FUNC1(dd, loc, 0, 0x80);
	if (ret < 0)
		FUNC2(dd, "RCLKRLS failed to clear D7\n");
	else {
		FUNC4(1);
		FUNC1(dd, loc, 0x80, 0x80);
	}
	/* Now reset xgxs and IBC to complete the recovery */
	dd->f_xgxs_reset(dd->pport);
}