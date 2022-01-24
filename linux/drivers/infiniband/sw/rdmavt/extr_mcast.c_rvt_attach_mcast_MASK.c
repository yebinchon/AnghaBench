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
typedef  union ib_gid {int dummy; } ib_gid ;
typedef  int /*<<< orphan*/  u16 ;
struct rvt_qp {int port_num; scalar_t__ state; } ;
struct rvt_mcast_qp {int dummy; } ;
struct rvt_mcast {int dummy; } ;
struct rvt_ibport {int dummy; } ;
struct rvt_dev_info {struct rvt_ibport** ports; } ;
struct ib_qp {int qp_num; int /*<<< orphan*/  device; } ;

/* Variables and functions */
#define  EEXIST 131 
#define  EINVAL 130 
#define  ENOMEM 129 
#define  ESRCH 128 
 scalar_t__ IB_QPS_RESET ; 
 struct rvt_dev_info* FUNC0 (int /*<<< orphan*/ ) ; 
 struct rvt_qp* FUNC1 (struct ib_qp*) ; 
 int FUNC2 (struct rvt_dev_info*,struct rvt_ibport*,struct rvt_mcast*,struct rvt_mcast_qp*) ; 
 struct rvt_mcast* FUNC3 (union ib_gid*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rvt_mcast*) ; 
 struct rvt_mcast_qp* FUNC5 (struct rvt_qp*) ; 
 int /*<<< orphan*/  FUNC6 (struct rvt_mcast_qp*) ; 

int FUNC7(struct ib_qp *ibqp, union ib_gid *gid, u16 lid)
{
	struct rvt_qp *qp = FUNC1(ibqp);
	struct rvt_dev_info *rdi = FUNC0(ibqp->device);
	struct rvt_ibport *ibp = rdi->ports[qp->port_num - 1];
	struct rvt_mcast *mcast;
	struct rvt_mcast_qp *mqp;
	int ret = -ENOMEM;

	if (ibqp->qp_num <= 1 || qp->state == IB_QPS_RESET)
		return -EINVAL;

	/*
	 * Allocate data structures since its better to do this outside of
	 * spin locks and it will most likely be needed.
	 */
	mcast = FUNC3(gid, lid);
	if (!mcast)
		return -ENOMEM;

	mqp = FUNC5(qp);
	if (!mqp)
		goto bail_mcast;

	switch (FUNC2(rdi, ibp, mcast, mqp)) {
	case ESRCH:
		/* Neither was used: OK to attach the same QP twice. */
		ret = 0;
		goto bail_mqp;
	case EEXIST: /* The mcast wasn't used */
		ret = 0;
		goto bail_mcast;
	case ENOMEM:
		/* Exceeded the maximum number of mcast groups. */
		ret = -ENOMEM;
		goto bail_mqp;
	case EINVAL:
		/* Invalid MGID/MLID pair */
		ret = -EINVAL;
		goto bail_mqp;
	default:
		break;
	}

	return 0;

bail_mqp:
	FUNC6(mqp);

bail_mcast:
	FUNC4(mcast);

	return ret;
}