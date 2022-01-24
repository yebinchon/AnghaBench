#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct hfi1_vnic_vport_info {int num_rx_q; struct hfi1_devdata* dd; } ;
struct TYPE_6__ {int num_ctxt; int /*<<< orphan*/  num_vports; TYPE_2__** ctxt; } ;
struct hfi1_devdata {TYPE_1__ vnic; } ;
struct TYPE_7__ {int vnic_q_idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  hfi1_mutex ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (struct hfi1_devdata*,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC5 (struct hfi1_vnic_vport_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct hfi1_devdata*) ; 
 int FUNC7 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct hfi1_vnic_vport_info *vinfo)
{
	struct hfi1_devdata *dd = vinfo->dd;
	int i, rc = 0;

	FUNC8(&hfi1_mutex);
	if (!dd->vnic.num_vports) {
		rc = FUNC7(dd);
		if (rc)
			goto txreq_fail;
	}

	for (i = dd->vnic.num_ctxt; i < vinfo->num_rx_q; i++) {
		rc = FUNC4(dd, &dd->vnic.ctxt[i]);
		if (rc)
			break;
		FUNC2(dd->vnic.ctxt[i]);
		dd->vnic.ctxt[i]->vnic_q_idx = i;
	}

	if (i < vinfo->num_rx_q) {
		/*
		 * If required amount of contexts is not
		 * allocated successfully then remaining contexts
		 * are released.
		 */
		while (i-- > dd->vnic.num_ctxt) {
			FUNC0(dd, dd->vnic.ctxt[i]);
			FUNC3(dd->vnic.ctxt[i]);
			dd->vnic.ctxt[i] = NULL;
		}
		goto alloc_fail;
	}

	if (dd->vnic.num_ctxt != i) {
		dd->vnic.num_ctxt = i;
		FUNC1(dd);
	}

	dd->vnic.num_vports++;
	FUNC5(vinfo);
alloc_fail:
	if (!dd->vnic.num_vports)
		FUNC6(dd);
txreq_fail:
	FUNC9(&hfi1_mutex);
	return rc;
}