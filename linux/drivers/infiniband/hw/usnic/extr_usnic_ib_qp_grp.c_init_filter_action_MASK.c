#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct usnic_vnic_res_chunk {TYPE_2__** res; } ;
struct usnic_ib_qp_grp {TYPE_3__* vf; } ;
struct TYPE_5__ {int /*<<< orphan*/  rq_idx; } ;
struct TYPE_8__ {TYPE_1__ u; int /*<<< orphan*/  type; } ;
struct usnic_filter_action {TYPE_4__ action; int /*<<< orphan*/  vnic_idx; } ;
struct TYPE_7__ {int /*<<< orphan*/  vnic; } ;
struct TYPE_6__ {int /*<<< orphan*/  vnic_idx; } ;

/* Variables and functions */
 size_t DFLT_RQ_IDX ; 
 int /*<<< orphan*/  FILTER_ACTION_RQ_STEERING ; 
 scalar_t__ FUNC0 (struct usnic_vnic_res_chunk*) ; 
 int FUNC1 (struct usnic_vnic_res_chunk*) ; 
 int /*<<< orphan*/  USNIC_VNIC_RES_TYPE_RQ ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 struct usnic_vnic_res_chunk* FUNC3 (struct usnic_ib_qp_grp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct usnic_ib_qp_grp *qp_grp,
				struct usnic_filter_action *uaction)
{
	struct usnic_vnic_res_chunk *res_chunk;

	res_chunk = FUNC3(qp_grp, USNIC_VNIC_RES_TYPE_RQ);
	if (FUNC0(res_chunk)) {
		FUNC2("Unable to get %s with err %ld\n",
			FUNC5(USNIC_VNIC_RES_TYPE_RQ),
			FUNC1(res_chunk));
		return FUNC1(res_chunk);
	}

	uaction->vnic_idx = FUNC4(qp_grp->vf->vnic);
	uaction->action.type = FILTER_ACTION_RQ_STEERING;
	uaction->action.u.rq_idx = res_chunk->res[DFLT_RQ_IDX]->vnic_idx;

	return 0;
}