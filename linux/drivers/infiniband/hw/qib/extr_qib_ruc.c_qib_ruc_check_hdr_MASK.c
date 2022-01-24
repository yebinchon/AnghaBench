#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_15__ {int /*<<< orphan*/  qp_num; } ;
struct rvt_qp {scalar_t__ s_mig_state; scalar_t__ port_num; int /*<<< orphan*/  remote_ah_attr; TYPE_7__ ibqp; int /*<<< orphan*/  s_pkey_index; int /*<<< orphan*/  s_lock; int /*<<< orphan*/  alt_ah_attr; int /*<<< orphan*/  s_alt_pkey_index; } ;
struct TYPE_9__ {int /*<<< orphan*/  gid_prefix; } ;
struct qib_ibport {TYPE_1__ rvp; } ;
struct TYPE_10__ {int /*<<< orphan*/  sgid; int /*<<< orphan*/  dgid; } ;
struct TYPE_11__ {TYPE_2__ grh; } ;
struct TYPE_12__ {TYPE_3__ l; } ;
struct ib_header {int /*<<< orphan*/ * lrh; TYPE_4__ u; } ;
struct TYPE_13__ {int /*<<< orphan*/  interface_id; int /*<<< orphan*/  subnet_prefix; } ;
struct TYPE_14__ {TYPE_5__ global; } ;
struct ib_global_route {TYPE_6__ dgid; int /*<<< orphan*/  sgid_index; } ;
typedef  int /*<<< orphan*/  __be64 ;
struct TYPE_16__ {scalar_t__ port; } ;

/* Variables and functions */
 int IB_AH_GRH ; 
 int IB_BTH_MIG_REQ ; 
 scalar_t__ IB_MIG_ARMED ; 
 scalar_t__ IB_MIG_REARM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qib_ibport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC3 (struct qib_ibport*) ; 
 int /*<<< orphan*/  FUNC4 (struct qib_ibport*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct qib_ibport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rvt_qp*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 struct ib_global_route* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC14(struct qib_ibport *ibp, struct ib_header *hdr,
		      int has_grh, struct rvt_qp *qp, u32 bth0)
{
	__be64 guid;
	unsigned long flags;

	if (qp->s_mig_state == IB_MIG_ARMED && (bth0 & IB_BTH_MIG_REQ)) {
		if (!has_grh) {
			if (FUNC8(&qp->alt_ah_attr) &
			    IB_AH_GRH)
				goto err;
		} else {
			const struct ib_global_route *grh;

			if (!(FUNC8(&qp->alt_ah_attr) &
			      IB_AH_GRH))
				goto err;
			grh = FUNC11(&qp->alt_ah_attr);
			guid = FUNC1(ibp, grh->sgid_index);
			if (!FUNC2(&hdr->u.l.grh.dgid,
				    ibp->rvp.gid_prefix, guid))
				goto err;
			if (!FUNC2(&hdr->u.l.grh.sgid,
			    grh->dgid.global.subnet_prefix,
			    grh->dgid.global.interface_id))
				goto err;
		}
		if (!FUNC7((u16)bth0,
				 FUNC5(ibp, qp->s_alt_pkey_index))) {
			FUNC4(ibp,
				     (u16)bth0,
				     (FUNC0(hdr->lrh[0]) >> 4) & 0xF,
				     0, qp->ibqp.qp_num,
				     hdr->lrh[3], hdr->lrh[1]);
			goto err;
		}
		/* Validate the SLID. See Ch. 9.6.1.5 and 17.2.8 */
		if ((FUNC0(hdr->lrh[3]) !=
		     FUNC9(&qp->alt_ah_attr)) ||
		    FUNC3(ibp)->port !=
			    FUNC10(&qp->alt_ah_attr))
			goto err;
		FUNC12(&qp->s_lock, flags);
		FUNC6(qp);
		FUNC13(&qp->s_lock, flags);
	} else {
		if (!has_grh) {
			if (FUNC8(&qp->remote_ah_attr) &
			    IB_AH_GRH)
				goto err;
		} else {
			const struct ib_global_route *grh;

			if (!(FUNC8(&qp->remote_ah_attr) &
			      IB_AH_GRH))
				goto err;
			grh = FUNC11(&qp->remote_ah_attr);
			guid = FUNC1(ibp, grh->sgid_index);
			if (!FUNC2(&hdr->u.l.grh.dgid,
				    ibp->rvp.gid_prefix, guid))
				goto err;
			if (!FUNC2(&hdr->u.l.grh.sgid,
			    grh->dgid.global.subnet_prefix,
			    grh->dgid.global.interface_id))
				goto err;
		}
		if (!FUNC7((u16)bth0,
				 FUNC5(ibp, qp->s_pkey_index))) {
			FUNC4(ibp,
				     (u16)bth0,
				     (FUNC0(hdr->lrh[0]) >> 4) & 0xF,
				     0, qp->ibqp.qp_num,
				     hdr->lrh[3], hdr->lrh[1]);
			goto err;
		}
		/* Validate the SLID. See Ch. 9.6.1.5 */
		if (FUNC0(hdr->lrh[3]) !=
		    FUNC9(&qp->remote_ah_attr) ||
		    FUNC3(ibp)->port != qp->port_num)
			goto err;
		if (qp->s_mig_state == IB_MIG_REARM &&
		    !(bth0 & IB_BTH_MIG_REQ))
			qp->s_mig_state = IB_MIG_ARMED;
	}

	return 0;

err:
	return 1;
}