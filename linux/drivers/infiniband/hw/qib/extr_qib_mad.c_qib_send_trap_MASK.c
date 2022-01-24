#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_4__ {scalar_t__ sm_lid; unsigned long subnet_timeout; scalar_t__ trap_timeout; int /*<<< orphan*/  lock; TYPE_3__* sm_ah; int /*<<< orphan*/  tid; struct ib_mad_agent* send_agent; } ;
struct qib_ibport {TYPE_1__ rvp; } ;
struct ib_smp {int class_version; int /*<<< orphan*/  data; int /*<<< orphan*/  attr_id; int /*<<< orphan*/  tid; int /*<<< orphan*/  method; int /*<<< orphan*/  mgmt_class; int /*<<< orphan*/  base_version; } ;
struct ib_mad_send_buf {struct ib_mad_send_buf* ah; struct ib_smp* mad; } ;
struct ib_mad_agent {int dummy; } ;
struct ib_ah {struct ib_ah* ah; struct ib_smp* mad; } ;
struct TYPE_6__ {struct ib_mad_send_buf ibah; } ;
struct TYPE_5__ {int lflags; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IB_LID_PERMISSIVE ; 
 int /*<<< orphan*/  IB_MGMT_BASE_VERSION ; 
 int /*<<< orphan*/  IB_MGMT_CLASS_SUBN_LID_ROUTED ; 
 int /*<<< orphan*/  IB_MGMT_MAD_DATA ; 
 int /*<<< orphan*/  IB_MGMT_MAD_HDR ; 
 int /*<<< orphan*/  IB_MGMT_METHOD_TRAP ; 
 int /*<<< orphan*/  IB_SMP_ATTR_NOTICE ; 
 scalar_t__ FUNC0 (struct ib_mad_send_buf*) ; 
 int FUNC1 (struct ib_mad_send_buf*) ; 
 int QIBL_LINKACTIVE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct ib_mad_send_buf* FUNC4 (struct ib_mad_agent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_mad_send_buf*) ; 
 int FUNC6 (struct ib_mad_send_buf*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC7 (struct ib_mad_send_buf*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,void*,unsigned int) ; 
 TYPE_2__* FUNC9 (struct qib_ibport*) ; 
 struct ib_mad_send_buf* FUNC10 (struct qib_ibport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC13 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC14 (unsigned long) ; 

__attribute__((used)) static void FUNC15(struct qib_ibport *ibp, void *data, unsigned len)
{
	struct ib_mad_send_buf *send_buf;
	struct ib_mad_agent *agent;
	struct ib_smp *smp;
	int ret;
	unsigned long flags;
	unsigned long timeout;

	agent = ibp->rvp.send_agent;
	if (!agent)
		return;

	/* o14-3.2.1 */
	if (!(FUNC9(ibp)->lflags & QIBL_LINKACTIVE))
		return;

	/* o14-2 */
	if (ibp->rvp.trap_timeout &&
	    FUNC13(jiffies, ibp->rvp.trap_timeout))
		return;

	send_buf = FUNC4(agent, 0, 0, 0, IB_MGMT_MAD_HDR,
				      IB_MGMT_MAD_DATA, GFP_ATOMIC,
				      IB_MGMT_BASE_VERSION);
	if (FUNC0(send_buf))
		return;

	smp = send_buf->mad;
	smp->base_version = IB_MGMT_BASE_VERSION;
	smp->mgmt_class = IB_MGMT_CLASS_SUBN_LID_ROUTED;
	smp->class_version = 1;
	smp->method = IB_MGMT_METHOD_TRAP;
	ibp->rvp.tid++;
	smp->tid = FUNC3(ibp->rvp.tid);
	smp->attr_id = IB_SMP_ATTR_NOTICE;
	/* o14-1: smp->mkey = 0; */
	FUNC8(smp->data, data, len);

	FUNC11(&ibp->rvp.lock, flags);
	if (!ibp->rvp.sm_ah) {
		if (ibp->rvp.sm_lid != FUNC2(IB_LID_PERMISSIVE)) {
			struct ib_ah *ah;

			ah = FUNC10(ibp, (u16)ibp->rvp.sm_lid);
			if (FUNC0(ah))
				ret = FUNC1(ah);
			else {
				send_buf->ah = ah;
				ibp->rvp.sm_ah = FUNC7(ah);
				ret = 0;
			}
		} else
			ret = -EINVAL;
	} else {
		send_buf->ah = &ibp->rvp.sm_ah->ibah;
		ret = 0;
	}
	FUNC12(&ibp->rvp.lock, flags);

	if (!ret)
		ret = FUNC6(send_buf, NULL);
	if (!ret) {
		/* 4.096 usec. */
		timeout = (4096 * (1UL << ibp->rvp.subnet_timeout)) / 1000;
		ibp->rvp.trap_timeout = jiffies + FUNC14(timeout);
	} else {
		FUNC5(send_buf);
		ibp->rvp.trap_timeout = 0;
	}
}