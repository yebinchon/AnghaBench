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
struct qib_devdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_7220_SERDES ; 
 int /*<<< orphan*/  IB_MPREG6 ; 
 int /*<<< orphan*/  QLOGIC_IB_HWE_IB_UC_MEMORYPARITYERR ; 
 int /*<<< orphan*/  UC_PAR_CLR_D ; 
 int /*<<< orphan*/  UC_PAR_CLR_M ; 
 int /*<<< orphan*/  kr_hwerrclear ; 
 int /*<<< orphan*/  kr_scratch ; 
 int /*<<< orphan*/  FUNC0 (struct qib_devdata*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct qib_devdata*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct qib_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qib_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5(struct qib_devdata *dd)
{
	int ret;

	/* clear, then re-enable parity errs */
	ret = FUNC2(dd, IB_7220_SERDES, IB_MPREG6,
		UC_PAR_CLR_D, UC_PAR_CLR_M);
	if (ret < 0) {
		FUNC0(dd, "Failed clearing IBSerDes Parity err\n");
		goto bail;
	}
	ret = FUNC2(dd, IB_7220_SERDES, IB_MPREG6, 0,
		UC_PAR_CLR_M);

	FUNC1(dd, kr_scratch);
	FUNC4(4);
	FUNC3(dd, kr_hwerrclear,
		QLOGIC_IB_HWE_IB_UC_MEMORYPARITYERR);
	FUNC1(dd, kr_scratch);
bail:
	return;
}