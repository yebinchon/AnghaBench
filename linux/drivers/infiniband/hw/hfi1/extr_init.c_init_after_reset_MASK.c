#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct hfi1_devdata {int num_rcv_contexts; int num_send_contexts; TYPE_1__* send_contexts; } ;
struct hfi1_ctxtdata {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sc; } ;

/* Variables and functions */
 int HFI1_RCVCTRL_CTXT_DIS ; 
 int HFI1_RCVCTRL_INTRAVAIL_DIS ; 
 int HFI1_RCVCTRL_TAILUPD_DIS ; 
 int /*<<< orphan*/  PSC_GLOBAL_DISABLE ; 
 struct hfi1_ctxtdata* FUNC0 (struct hfi1_devdata*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_ctxtdata*) ; 
 int /*<<< orphan*/  FUNC2 (struct hfi1_devdata*,int,struct hfi1_ctxtdata*) ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct hfi1_devdata *dd)
{
	int i;
	struct hfi1_ctxtdata *rcd;
	/*
	 * Ensure chip does no sends or receives, tail updates, or
	 * pioavail updates while we re-initialize.  This is mostly
	 * for the driver data structures, not chip registers.
	 */
	for (i = 0; i < dd->num_rcv_contexts; i++) {
		rcd = FUNC0(dd, i);
		FUNC2(dd, HFI1_RCVCTRL_CTXT_DIS |
			     HFI1_RCVCTRL_INTRAVAIL_DIS |
			     HFI1_RCVCTRL_TAILUPD_DIS, rcd);
		FUNC1(rcd);
	}
	FUNC3(dd, PSC_GLOBAL_DISABLE);
	for (i = 0; i < dd->num_send_contexts; i++)
		FUNC4(dd->send_contexts[i].sc);

	return 0;
}