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
struct qib_pportdata {int p_sendctrl; struct qib_devdata* dd; } ;
struct qib_devdata {int /*<<< orphan*/  sendctrl_lock; } ;
struct ib_vl_weight_elem {int vl; int weight; } ;

/* Variables and functions */
 int /*<<< orphan*/  IBVLArbiterEn ; 
 int /*<<< orphan*/  LowPriority0_0 ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SendCtrl_0 ; 
 int /*<<< orphan*/  VirtualLane ; 
 int /*<<< orphan*/  Weight ; 
 int /*<<< orphan*/  kr_scratch ; 
 unsigned int krp_sendctrl ; 
 int /*<<< orphan*/  FUNC3 (struct qib_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qib_pportdata*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct qib_pportdata *ppd, unsigned regno,
			   struct ib_vl_weight_elem *vl)
{
	unsigned i;

	for (i = 0; i < 16; i++, regno++, vl++) {
		u64 val;

		val = ((vl->vl & FUNC2(LowPriority0_0, VirtualLane)) <<
			FUNC0(LowPriority0_0, VirtualLane)) |
		      ((vl->weight & FUNC2(LowPriority0_0, Weight)) <<
			FUNC0(LowPriority0_0, Weight));
		FUNC4(ppd, regno, val);
	}
	if (!(ppd->p_sendctrl & FUNC1(SendCtrl_0, IBVLArbiterEn))) {
		struct qib_devdata *dd = ppd->dd;
		unsigned long flags;

		FUNC5(&dd->sendctrl_lock, flags);
		ppd->p_sendctrl |= FUNC1(SendCtrl_0, IBVLArbiterEn);
		FUNC4(ppd, krp_sendctrl, ppd->p_sendctrl);
		FUNC3(dd, kr_scratch, 0);
		FUNC6(&dd->sendctrl_lock, flags);
	}
}