#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct qib_pportdata {TYPE_1__* dd; } ;
struct qib_chip_specific {scalar_t__ xmit_wait; scalar_t__ rpkts; scalar_t__ spkts; scalar_t__ rword; scalar_t__ sword; int /*<<< orphan*/  pma_sample_status; int /*<<< orphan*/  pma_timer; } ;
struct TYPE_2__ {struct qib_chip_specific* cspec; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_PMA_SAMPLE_STATUS_DONE ; 
 int /*<<< orphan*/  IB_PMA_SAMPLE_STATUS_RUNNING ; 
 int /*<<< orphan*/  IB_PMA_SAMPLE_STATUS_STARTED ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct qib_pportdata*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct qib_pportdata *ppd, u32 intv,
				     u32 start)
{
	struct qib_chip_specific *cs = ppd->dd->cspec;

	if (start && intv) {
		cs->pma_sample_status = IB_PMA_SAMPLE_STATUS_STARTED;
		FUNC0(&cs->pma_timer, jiffies + FUNC2(start));
	} else if (intv) {
		cs->pma_sample_status = IB_PMA_SAMPLE_STATUS_RUNNING;
		FUNC1(ppd, &cs->sword, &cs->rword,
				      &cs->spkts, &cs->rpkts, &cs->xmit_wait);
		FUNC0(&cs->pma_timer, jiffies + FUNC2(intv));
	} else {
		cs->pma_sample_status = IB_PMA_SAMPLE_STATUS_DONE;
		cs->sword = 0;
		cs->rword = 0;
		cs->spkts = 0;
		cs->rpkts = 0;
		cs->xmit_wait = 0;
	}
}