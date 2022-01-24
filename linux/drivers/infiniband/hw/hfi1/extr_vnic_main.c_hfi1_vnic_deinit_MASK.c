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
struct hfi1_vnic_vport_info {struct hfi1_devdata* dd; } ;
struct TYPE_2__ {scalar_t__ num_vports; int num_ctxt; int /*<<< orphan*/ ** ctxt; } ;
struct hfi1_devdata {TYPE_1__ vnic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  hfi1_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct hfi1_vnic_vport_info *vinfo)
{
	struct hfi1_devdata *dd = vinfo->dd;
	int i;

	FUNC4(&hfi1_mutex);
	if (--dd->vnic.num_vports == 0) {
		for (i = 0; i < dd->vnic.num_ctxt; i++) {
			FUNC0(dd, dd->vnic.ctxt[i]);
			FUNC2(dd->vnic.ctxt[i]);
			dd->vnic.ctxt[i] = NULL;
		}
		FUNC1(dd);
		dd->vnic.num_ctxt = 0;
		FUNC3(dd);
	}
	FUNC5(&hfi1_mutex);
}