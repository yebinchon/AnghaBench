#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usnic_vnic_res_spec {int dummy; } ;
struct usnic_transport_spec {int trans_type; } ;
struct usnic_ib_vf {int /*<<< orphan*/  vnic; int /*<<< orphan*/  lock; } ;
struct usnic_ib_qp_grp_flow {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  qp_num; } ;
struct usnic_ib_qp_grp {struct usnic_ib_qp_grp_flow* res_chunk_list; int /*<<< orphan*/  grp_id; TYPE_1__ ibqp; int /*<<< orphan*/  owner_pid; int /*<<< orphan*/  state; struct usnic_fwd_dev* ufdev; int /*<<< orphan*/  lock; int /*<<< orphan*/  flows_lst; } ;
struct usnic_ib_pd {int dummy; } ;
struct usnic_fwd_dev {int dummy; } ;
typedef  enum usnic_transport_type { ____Placeholder_usnic_transport_type } usnic_transport_type ;
struct TYPE_4__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int EFAULT ; 
 int ENOMEM ; 
 struct usnic_ib_qp_grp* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IB_QPS_RESET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct usnic_ib_qp_grp_flow*) ; 
 int FUNC3 (struct usnic_ib_qp_grp_flow*) ; 
 struct usnic_ib_qp_grp_flow* FUNC4 (int /*<<< orphan*/ ,struct usnic_vnic_res_spec*,struct usnic_ib_qp_grp*) ; 
 struct usnic_ib_qp_grp_flow* FUNC5 (struct usnic_ib_qp_grp*,struct usnic_transport_spec*) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC6 (struct usnic_ib_qp_grp_flow*) ; 
 int /*<<< orphan*/  FUNC7 (struct usnic_ib_qp_grp*) ; 
 struct usnic_ib_qp_grp* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct usnic_vnic_res_spec*) ; 
 int /*<<< orphan*/ * min_transport_spec ; 
 int FUNC11 (struct usnic_ib_vf*,struct usnic_ib_pd*,struct usnic_ib_qp_grp*) ; 
 int /*<<< orphan*/  FUNC12 (struct usnic_ib_qp_grp*) ; 
 int FUNC13 (struct usnic_ib_qp_grp_flow*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct usnic_ib_qp_grp_flow*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct usnic_ib_qp_grp*) ; 
 int FUNC18 (int /*<<< orphan*/ *,struct usnic_vnic_res_spec*) ; 

struct usnic_ib_qp_grp *
FUNC19(struct usnic_fwd_dev *ufdev, struct usnic_ib_vf *vf,
			struct usnic_ib_pd *pd,
			struct usnic_vnic_res_spec *res_spec,
			struct usnic_transport_spec *transport_spec)
{
	struct usnic_ib_qp_grp *qp_grp;
	int err;
	enum usnic_transport_type transport = transport_spec->trans_type;
	struct usnic_ib_qp_grp_flow *qp_flow;

	FUNC9(&vf->lock);

	err = FUNC18(&min_transport_spec[transport],
						res_spec);
	if (err) {
		FUNC16("Spec does not meet minimum req for transport %d\n",
				transport);
		FUNC10(res_spec);
		return FUNC0(err);
	}

	qp_grp = FUNC8(sizeof(*qp_grp), GFP_ATOMIC);
	if (!qp_grp)
		return NULL;

	qp_grp->res_chunk_list = FUNC4(vf->vnic, res_spec,
							qp_grp);
	if (FUNC2(qp_grp->res_chunk_list)) {
		err = qp_grp->res_chunk_list ?
				FUNC3(qp_grp->res_chunk_list) : -ENOMEM;
		goto out_free_qp_grp;
	}

	err = FUNC11(vf, pd, qp_grp);
	if (err)
		goto out_free_res;

	FUNC1(&qp_grp->flows_lst);
	FUNC15(&qp_grp->lock);
	qp_grp->ufdev = ufdev;
	qp_grp->state = IB_QPS_RESET;
	qp_grp->owner_pid = current->pid;

	qp_flow = FUNC5(qp_grp, transport_spec);
	if (FUNC2(qp_flow)) {
		FUNC16("Unable to create and add flow with err %ld\n",
				FUNC3(qp_flow));
		err = qp_flow ? FUNC3(qp_flow) : -EFAULT;
		goto out_qp_grp_vf_unbind;
	}

	err = FUNC13(qp_flow, &qp_grp->grp_id);
	if (err)
		goto out_release_flow;
	qp_grp->ibqp.qp_num = qp_grp->grp_id;

	FUNC17(qp_grp);

	return qp_grp;

out_release_flow:
	FUNC14(qp_flow);
out_qp_grp_vf_unbind:
	FUNC12(qp_grp);
out_free_res:
	FUNC6(qp_grp->res_chunk_list);
out_free_qp_grp:
	FUNC7(qp_grp);

	return FUNC0(err);
}