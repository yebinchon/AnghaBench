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
typedef  int u64 ;
struct qib_pportdata {struct qib_devdata* dd; } ;
struct qib_devdata {int control; } ;

/* Variables and functions */
 int QLOGIC_IB_C_LINKENABLE ; 
 int QLOGIC_IB_XGXS_RESET ; 
 int /*<<< orphan*/  kr_control ; 
 int /*<<< orphan*/  kr_scratch ; 
 int /*<<< orphan*/  kr_xgxs_cfg ; 
 int /*<<< orphan*/  FUNC0 (struct qib_devdata*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct qib_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qib_devdata*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct qib_pportdata *ppd)
{
	u64 val, prev_val;
	struct qib_devdata *dd = ppd->dd;

	prev_val = FUNC1(dd, kr_xgxs_cfg);
	val = prev_val | QLOGIC_IB_XGXS_RESET;
	prev_val &= ~QLOGIC_IB_XGXS_RESET; /* be sure */
	FUNC2(dd, kr_control,
		       dd->control & ~QLOGIC_IB_C_LINKENABLE);
	FUNC2(dd, kr_xgxs_cfg, val);
	FUNC0(dd, kr_scratch);
	FUNC2(dd, kr_xgxs_cfg, prev_val);
	FUNC2(dd, kr_control, dd->control);
}