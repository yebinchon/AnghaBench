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
typedef  scalar_t__ u8 ;
struct timer_list {int dummy; } ;
struct TYPE_7__ {scalar_t__ flags; int /*<<< orphan*/  timer; int /*<<< orphan*/  counter; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
struct TYPE_6__ {TYPE_1__ rvp; } ;
struct qib_pportdata {TYPE_3__ cong_stats; TYPE_2__ ibport_data; } ;
struct qib_devdata {scalar_t__ (* f_portcntr ) (struct qib_pportdata*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* f_set_cntr_sample ) (struct qib_pportdata*,int /*<<< orphan*/ ,int) ;} ;
struct TYPE_8__ {int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 scalar_t__ HZ ; 
 scalar_t__ IB_PMA_CONG_HW_CONTROL_SAMPLE ; 
 scalar_t__ IB_PMA_CONG_HW_CONTROL_TIMER ; 
 scalar_t__ IB_PMA_SAMPLE_STATUS_DONE ; 
 int /*<<< orphan*/  QIBPORTCNTR_PSSTAT ; 
 int /*<<< orphan*/  QIB_CONG_TIMER_PSINTERVAL ; 
 int /*<<< orphan*/  FUNC0 (struct qib_pportdata*) ; 
 TYPE_4__ cong_stats ; 
 struct qib_devdata* FUNC1 (struct qib_pportdata*) ; 
 struct qib_pportdata* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct qib_pportdata* ppd ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (struct qib_pportdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct qib_pportdata*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct qib_pportdata*) ; 

__attribute__((used)) static void FUNC9(struct timer_list *t)
{
	struct qib_pportdata *ppd = FUNC2(ppd, t, cong_stats.timer);
	struct qib_devdata *dd = FUNC1(ppd);
	unsigned long flags;
	u8 status;

	FUNC4(&ppd->ibport_data.rvp.lock, flags);
	if (ppd->cong_stats.flags == IB_PMA_CONG_HW_CONTROL_SAMPLE) {
		status = dd->f_portcntr(ppd, QIBPORTCNTR_PSSTAT);
		if (status == IB_PMA_SAMPLE_STATUS_DONE) {
			/* save counter cache */
			FUNC0(ppd);
			ppd->cong_stats.flags = IB_PMA_CONG_HW_CONTROL_TIMER;
		} else
			goto done;
	}
	ppd->cong_stats.counter = FUNC8(ppd);
	dd->f_set_cntr_sample(ppd, QIB_CONG_TIMER_PSINTERVAL, 0x0);
done:
	FUNC5(&ppd->ibport_data.rvp.lock, flags);
	FUNC3(&ppd->cong_stats.timer, jiffies + HZ);
}