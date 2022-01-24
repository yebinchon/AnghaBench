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
typedef  scalar_t__ u8 ;
struct qib_pportdata {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/ * pma_counter_select; int /*<<< orphan*/  pma_tag; int /*<<< orphan*/  pma_sample_interval; int /*<<< orphan*/  pma_sample_start; } ;
struct qib_ibport {TYPE_2__ rvp; } ;
struct qib_ibdev {int dummy; } ;
struct qib_devdata {int /*<<< orphan*/  (* f_portcntr ) (struct qib_pportdata*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* f_get_ib_cfg ) (struct qib_pportdata*,int /*<<< orphan*/ ) ;} ;
struct ib_smp {int dummy; } ;
struct ib_pma_portsamplescontrol {scalar_t__ port_select; int counter_width; int /*<<< orphan*/ * counter_select; int /*<<< orphan*/  tag; void* sample_interval; void* sample_start; int /*<<< orphan*/  counter_mask0_9; int /*<<< orphan*/  sample_status; int /*<<< orphan*/  tick; } ;
struct TYPE_3__ {scalar_t__ attr_mod; int /*<<< orphan*/  status; } ;
struct ib_pma_mad {TYPE_1__ mad_hdr; scalar_t__ data; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COUNTER_MASK0_9 ; 
 int /*<<< orphan*/  IB_SMP_INVALID_FIELD ; 
 int /*<<< orphan*/  QIBPORTCNTR_PSSTAT ; 
 int /*<<< orphan*/  QIB_IB_CFG_PMA_TICKS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 struct qib_devdata* FUNC2 (struct qib_ibdev*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 struct qib_pportdata* FUNC4 (struct qib_ibport*) ; 
 int FUNC5 (struct ib_smp*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct qib_pportdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct qib_pportdata*,int /*<<< orphan*/ ) ; 
 struct qib_ibdev* FUNC10 (struct ib_device*) ; 
 struct qib_ibport* FUNC11 (struct ib_device*,scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct ib_pma_mad *pmp,
				      struct ib_device *ibdev, u8 port)
{
	struct ib_pma_portsamplescontrol *p =
		(struct ib_pma_portsamplescontrol *)pmp->data;
	struct qib_ibdev *dev = FUNC10(ibdev);
	struct qib_devdata *dd = FUNC2(dev);
	struct qib_ibport *ibp = FUNC11(ibdev, port);
	struct qib_pportdata *ppd = FUNC4(ibp);
	unsigned long flags;
	u8 port_select = p->port_select;

	FUNC3(pmp->data, 0, sizeof(pmp->data));

	p->port_select = port_select;
	if (pmp->mad_hdr.attr_mod != 0 || port_select != port) {
		pmp->mad_hdr.status |= IB_SMP_INVALID_FIELD;
		goto bail;
	}
	FUNC6(&ibp->rvp.lock, flags);
	p->tick = dd->f_get_ib_cfg(ppd, QIB_IB_CFG_PMA_TICKS);
	p->sample_status = dd->f_portcntr(ppd, QIBPORTCNTR_PSSTAT);
	p->counter_width = 4;   /* 32 bit counters */
	p->counter_mask0_9 = COUNTER_MASK0_9;
	p->sample_start = FUNC1(ibp->rvp.pma_sample_start);
	p->sample_interval = FUNC1(ibp->rvp.pma_sample_interval);
	p->tag = FUNC0(ibp->rvp.pma_tag);
	p->counter_select[0] = ibp->rvp.pma_counter_select[0];
	p->counter_select[1] = ibp->rvp.pma_counter_select[1];
	p->counter_select[2] = ibp->rvp.pma_counter_select[2];
	p->counter_select[3] = ibp->rvp.pma_counter_select[3];
	p->counter_select[4] = ibp->rvp.pma_counter_select[4];
	FUNC7(&ibp->rvp.lock, flags);

bail:
	return FUNC5((struct ib_smp *) pmp);
}