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
struct hfi1_devdata {int num_rcv_contexts; } ;
struct hfi1_ctxtdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HFI1_RCVCTRL_CTXT_DIS ; 
 int /*<<< orphan*/  RCV_CTRL_RCV_PORT_ENABLE_SMASK ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*,int /*<<< orphan*/ ) ; 
 struct hfi1_ctxtdata* FUNC1 (struct hfi1_devdata*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hfi1_ctxtdata*) ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_devdata*,int /*<<< orphan*/ ,struct hfi1_ctxtdata*) ; 

__attribute__((used)) static void FUNC4(struct hfi1_devdata *dd)
{
	int i;
	struct hfi1_ctxtdata *rcd;

	/* disable port */
	FUNC0(dd, RCV_CTRL_RCV_PORT_ENABLE_SMASK);

	/* disable all receive contexts */
	for (i = 0; i < dd->num_rcv_contexts; i++) {
		rcd = FUNC1(dd, i);
		FUNC3(dd, HFI1_RCVCTRL_CTXT_DIS, rcd);
		FUNC2(rcd);
	}
}