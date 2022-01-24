#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_12__ {int /*<<< orphan*/  qp_num; } ;
struct rvt_qp {scalar_t__ s_mig_state; scalar_t__ port_num; int /*<<< orphan*/  remote_ah_attr; TYPE_5__ ibqp; int /*<<< orphan*/  s_lock; int /*<<< orphan*/  alt_ah_attr; } ;
struct TYPE_10__ {int /*<<< orphan*/  interface_id; int /*<<< orphan*/  subnet_prefix; } ;
struct TYPE_11__ {TYPE_3__ global; } ;
struct ib_global_route {TYPE_4__ dgid; int /*<<< orphan*/  sgid_index; } ;
struct hfi1_packet {scalar_t__ dlid; scalar_t__ slid; scalar_t__ sl; int migrated; scalar_t__ etype; TYPE_2__* grh; int /*<<< orphan*/  pkey; struct rvt_qp* qp; } ;
struct TYPE_8__ {int /*<<< orphan*/  gid_prefix; } ;
struct hfi1_ibport {TYPE_1__ rvp; int /*<<< orphan*/ * sl_to_sc; } ;
typedef  int /*<<< orphan*/  __be64 ;
struct TYPE_13__ {scalar_t__ port; } ;
struct TYPE_9__ {int /*<<< orphan*/  sgid; int /*<<< orphan*/  dgid; } ;

/* Variables and functions */
 int IB_AH_GRH ; 
 scalar_t__ IB_MIG_ARMED ; 
 scalar_t__ IB_MIG_REARM ; 
 scalar_t__ RHF_RCV_TYPE_BYPASS ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_ibport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hfi1_ibport*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct rvt_qp*) ; 
 TYPE_6__* FUNC4 (struct hfi1_ibport*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 size_t FUNC9 (int /*<<< orphan*/ *) ; 
 struct ib_global_route* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 

int FUNC14(struct hfi1_ibport *ibp, struct hfi1_packet *packet)
{
	__be64 guid;
	unsigned long flags;
	struct rvt_qp *qp = packet->qp;
	u8 sc5 = ibp->sl_to_sc[FUNC9(&qp->remote_ah_attr)];
	u32 dlid = packet->dlid;
	u32 slid = packet->slid;
	u32 sl = packet->sl;
	bool migrated = packet->migrated;
	u16 pkey = packet->pkey;

	if (qp->s_mig_state == IB_MIG_ARMED && migrated) {
		if (!packet->grh) {
			if ((FUNC6(&qp->alt_ah_attr) &
			     IB_AH_GRH) &&
			    (packet->etype != RHF_RCV_TYPE_BYPASS))
				return 1;
		} else {
			const struct ib_global_route *grh;

			if (!(FUNC6(&qp->alt_ah_attr) &
			      IB_AH_GRH))
				return 1;
			grh = FUNC10(&qp->alt_ah_attr);
			guid = FUNC0(ibp, grh->sgid_index);
			if (!FUNC1(&packet->grh->dgid, ibp->rvp.gid_prefix,
				    guid))
				return 1;
			if (!FUNC1(
				&packet->grh->sgid,
				grh->dgid.global.subnet_prefix,
				grh->dgid.global.interface_id))
				return 1;
		}
		if (FUNC13(FUNC5(FUNC4(ibp), pkey,
					    sc5, slid))) {
			FUNC2(ibp, pkey, sl, 0, qp->ibqp.qp_num,
				      slid, dlid);
			return 1;
		}
		/* Validate the SLID. See Ch. 9.6.1.5 and 17.2.8 */
		if (slid != FUNC7(&qp->alt_ah_attr) ||
		    FUNC4(ibp)->port !=
			FUNC8(&qp->alt_ah_attr))
			return 1;
		FUNC11(&qp->s_lock, flags);
		FUNC3(qp);
		FUNC12(&qp->s_lock, flags);
	} else {
		if (!packet->grh) {
			if ((FUNC6(&qp->remote_ah_attr) &
			     IB_AH_GRH) &&
			    (packet->etype != RHF_RCV_TYPE_BYPASS))
				return 1;
		} else {
			const struct ib_global_route *grh;

			if (!(FUNC6(&qp->remote_ah_attr) &
						   IB_AH_GRH))
				return 1;
			grh = FUNC10(&qp->remote_ah_attr);
			guid = FUNC0(ibp, grh->sgid_index);
			if (!FUNC1(&packet->grh->dgid, ibp->rvp.gid_prefix,
				    guid))
				return 1;
			if (!FUNC1(
			     &packet->grh->sgid,
			     grh->dgid.global.subnet_prefix,
			     grh->dgid.global.interface_id))
				return 1;
		}
		if (FUNC13(FUNC5(FUNC4(ibp), pkey,
					    sc5, slid))) {
			FUNC2(ibp, pkey, sl, 0, qp->ibqp.qp_num,
				      slid, dlid);
			return 1;
		}
		/* Validate the SLID. See Ch. 9.6.1.5 */
		if ((slid != FUNC7(&qp->remote_ah_attr)) ||
		    FUNC4(ibp)->port != qp->port_num)
			return 1;
		if (qp->s_mig_state == IB_MIG_REARM && !migrated)
			qp->s_mig_state = IB_MIG_ARMED;
	}

	return 0;
}