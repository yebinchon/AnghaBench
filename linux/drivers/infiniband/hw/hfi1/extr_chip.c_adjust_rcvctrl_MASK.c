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
struct hfi1_devdata {int /*<<< orphan*/  rcvctrl_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  RCV_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct hfi1_devdata *dd, u64 add, u64 clear)
{
	u64 rcvctrl;
	unsigned long flags;

	FUNC1(&dd->rcvctrl_lock, flags);
	rcvctrl = FUNC0(dd, RCV_CTRL);
	rcvctrl |= add;
	rcvctrl &= ~clear;
	FUNC3(dd, RCV_CTRL, rcvctrl);
	FUNC2(&dd->rcvctrl_lock, flags);
}