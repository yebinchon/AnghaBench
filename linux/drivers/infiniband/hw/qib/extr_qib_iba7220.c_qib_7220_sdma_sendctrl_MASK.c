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
struct qib_pportdata {struct qib_devdata* dd; } ;
struct qib_devdata {int /*<<< orphan*/  sendctrl_lock; int /*<<< orphan*/  sendctrl; } ;

/* Variables and functions */
 unsigned int QIB_SDMA_SENDCTRL_OP_ENABLE ; 
 unsigned int QIB_SDMA_SENDCTRL_OP_HALT ; 
 unsigned int QIB_SDMA_SENDCTRL_OP_INTENABLE ; 
 int /*<<< orphan*/  SDmaEnable ; 
 int /*<<< orphan*/  SDmaHalt ; 
 int /*<<< orphan*/  SDmaIntEnable ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SendCtrl ; 
 int /*<<< orphan*/  kr_scratch ; 
 int /*<<< orphan*/  kr_sendctrl ; 
 int /*<<< orphan*/  FUNC1 (struct qib_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct qib_pportdata *ppd, unsigned op)
{
	struct qib_devdata *dd = ppd->dd;
	u64 set_sendctrl = 0;
	u64 clr_sendctrl = 0;

	if (op & QIB_SDMA_SENDCTRL_OP_ENABLE)
		set_sendctrl |= FUNC0(SendCtrl, SDmaEnable);
	else
		clr_sendctrl |= FUNC0(SendCtrl, SDmaEnable);

	if (op & QIB_SDMA_SENDCTRL_OP_INTENABLE)
		set_sendctrl |= FUNC0(SendCtrl, SDmaIntEnable);
	else
		clr_sendctrl |= FUNC0(SendCtrl, SDmaIntEnable);

	if (op & QIB_SDMA_SENDCTRL_OP_HALT)
		set_sendctrl |= FUNC0(SendCtrl, SDmaHalt);
	else
		clr_sendctrl |= FUNC0(SendCtrl, SDmaHalt);

	FUNC2(&dd->sendctrl_lock);

	dd->sendctrl |= set_sendctrl;
	dd->sendctrl &= ~clr_sendctrl;

	FUNC1(dd, kr_sendctrl, dd->sendctrl);
	FUNC1(dd, kr_scratch, 0);

	FUNC3(&dd->sendctrl_lock);
}