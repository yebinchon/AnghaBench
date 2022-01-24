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
struct hfi1_devdata {unsigned int num_rcv_contexts; } ;
struct hfi1_ctxtdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*,char*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_ctxtdata*) ; 
 struct hfi1_ctxtdata* FUNC2 (struct hfi1_devdata*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_ctxtdata*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct hfi1_devdata *dd, unsigned int source)
{
	struct hfi1_ctxtdata *rcd;
	char *err_detail;

	if (FUNC4(source < dd->num_rcv_contexts)) {
		rcd = FUNC2(dd, source);
		if (rcd) {
			FUNC1(rcd);
			FUNC3(rcd);
			return;	/* OK */
		}
		/* received an interrupt, but no rcd */
		err_detail = "dataless";
	} else {
		/* received an interrupt, but are not using that context */
		err_detail = "out of range";
	}
	FUNC0(dd, "unexpected %s receive available context interrupt %u\n",
		   err_detail, source);
}