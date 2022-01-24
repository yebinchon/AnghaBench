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
struct hfi1_devdata {int dummy; } ;
struct hfi1_ctxtdata {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct hfi1_devdata*,struct hfi1_ctxtdata**) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_devdata*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hfi1_devdata*,struct hfi1_ctxtdata*) ; 
 int FUNC3 (struct hfi1_devdata*,struct hfi1_ctxtdata*) ; 

__attribute__((used)) static int FUNC4(struct hfi1_devdata *dd,
				struct hfi1_ctxtdata **vnic_ctxt)
{
	int rc;

	rc = FUNC0(dd, vnic_ctxt);
	if (rc) {
		FUNC1(dd, "vnic ctxt alloc failed %d\n", rc);
		return rc;
	}

	rc = FUNC3(dd, *vnic_ctxt);
	if (rc) {
		FUNC1(dd, "vnic ctxt setup failed %d\n", rc);
		FUNC2(dd, *vnic_ctxt);
		*vnic_ctxt = NULL;
	}

	return rc;
}