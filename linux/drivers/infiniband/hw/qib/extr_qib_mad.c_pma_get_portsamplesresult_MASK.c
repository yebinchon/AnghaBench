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
struct TYPE_3__ {scalar_t__ flags; int /*<<< orphan*/  counter; } ;
struct qib_pportdata {TYPE_1__ cong_stats; } ;
struct TYPE_4__ {scalar_t__ pma_tag; int /*<<< orphan*/  lock; int /*<<< orphan*/ * pma_counter_select; } ;
struct qib_ibport {TYPE_2__ rvp; } ;
struct qib_ibdev {int dummy; } ;
struct qib_devdata {scalar_t__ (* f_portcntr ) (struct qib_pportdata*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* f_set_cntr_sample ) (struct qib_pportdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct ib_smp {int dummy; } ;
struct ib_pma_portsamplesresult {int /*<<< orphan*/ * counter; void* sample_status; void* tag; } ;
struct ib_pma_mad {scalar_t__ data; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ IB_PMA_CONG_HW_CONTROL_TIMER ; 
 scalar_t__ IB_PMA_SAMPLE_STATUS_DONE ; 
 int /*<<< orphan*/  QIBPORTCNTR_PSSTAT ; 
 int /*<<< orphan*/  QIB_CONG_TIMER_PSINTERVAL ; 
 int /*<<< orphan*/  FUNC1 (struct qib_pportdata*) ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct qib_devdata* FUNC4 (struct qib_ibdev*) ; 
 int /*<<< orphan*/  FUNC5 (struct qib_pportdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 struct qib_pportdata* FUNC7 (struct qib_ibport*) ; 
 int FUNC8 (struct ib_smp*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC11 (struct qib_pportdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct qib_pportdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct qib_ibdev* FUNC13 (struct ib_device*) ; 
 struct qib_ibport* FUNC14 (struct ib_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct qib_pportdata*) ; 

__attribute__((used)) static int FUNC16(struct ib_pma_mad *pmp,
				     struct ib_device *ibdev, u8 port)
{
	struct ib_pma_portsamplesresult *p =
		(struct ib_pma_portsamplesresult *)pmp->data;
	struct qib_ibdev *dev = FUNC13(ibdev);
	struct qib_devdata *dd = FUNC4(dev);
	struct qib_ibport *ibp = FUNC14(ibdev, port);
	struct qib_pportdata *ppd = FUNC7(ibp);
	unsigned long flags;
	u8 status;
	int i;

	FUNC6(pmp->data, 0, sizeof(pmp->data));
	FUNC9(&ibp->rvp.lock, flags);
	p->tag = FUNC2(ibp->rvp.pma_tag);
	if (ppd->cong_stats.flags == IB_PMA_CONG_HW_CONTROL_TIMER)
		p->sample_status = IB_PMA_SAMPLE_STATUS_DONE;
	else {
		status = dd->f_portcntr(ppd, QIBPORTCNTR_PSSTAT);
		p->sample_status = FUNC2(status);
		if (status == IB_PMA_SAMPLE_STATUS_DONE) {
			FUNC1(ppd);
			ppd->cong_stats.counter =
				FUNC15(ppd);
			dd->f_set_cntr_sample(ppd,
					      QIB_CONG_TIMER_PSINTERVAL, 0);
			ppd->cong_stats.flags = IB_PMA_CONG_HW_CONTROL_TIMER;
		}
	}
	for (i = 0; i < FUNC0(ibp->rvp.pma_counter_select); i++)
		p->counter[i] = FUNC3(
			FUNC5(
				ppd, ibp->rvp.pma_counter_select[i]));
	FUNC10(&ibp->rvp.lock, flags);

	return FUNC8((struct ib_smp *) pmp);
}