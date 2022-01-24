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
typedef  int u64 ;
struct TYPE_4__ {int current_state; } ;
struct qib_pportdata {int /*<<< orphan*/  sdma_lock; TYPE_2__ sdma_state; int /*<<< orphan*/  port; struct qib_devdata* dd; } ;
struct qib_devdata {int /*<<< orphan*/  unit; TYPE_1__* cspec; } ;
struct TYPE_3__ {char* sdmamsgbuf; } ;

/* Variables and functions */
 int DISABLES_SDMA ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int QLOGIC_IB_E_SDMAERRS ; 
 int /*<<< orphan*/  SDmaDisabledErr ; 
 int /*<<< orphan*/  SDmaUnexpDataErr ; 
 int /*<<< orphan*/  SendBufMisuseErr ; 
 int /*<<< orphan*/  FUNC1 (struct qib_pportdata*,int /*<<< orphan*/ ) ; 
 scalar_t__ kr_sendbuffererror ; 
 int /*<<< orphan*/  FUNC2 (struct qib_pportdata*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct qib_devdata*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 unsigned long FUNC4 (struct qib_devdata*,scalar_t__) ; 
 int /*<<< orphan*/  qib_sdma_event_e50_hw_cleaned ; 
 int /*<<< orphan*/  qib_sdma_event_e7220_err_halted ; 
#define  qib_sdma_state_s00_hw_down 134 
#define  qib_sdma_state_s10_hw_start_up_wait 133 
#define  qib_sdma_state_s20_idle 132 
#define  qib_sdma_state_s30_sw_clean_up_wait 131 
#define  qib_sdma_state_s40_hw_clean_up_wait 130 
#define  qib_sdma_state_s50_hw_halt_wait 129 
#define  qib_sdma_state_s99_running 128 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct qib_pportdata *ppd, u64 errs)
{
	unsigned long flags;
	struct qib_devdata *dd = ppd->dd;
	char *msg;

	errs &= QLOGIC_IB_E_SDMAERRS;

	msg = dd->cspec->sdmamsgbuf;
	FUNC2(ppd, errs, msg,
		sizeof(dd->cspec->sdmamsgbuf));
	FUNC5(&ppd->sdma_lock, flags);

	if (errs & FUNC0(SendBufMisuseErr)) {
		unsigned long sbuf[3];

		sbuf[0] = FUNC4(dd, kr_sendbuffererror);
		sbuf[1] = FUNC4(dd, kr_sendbuffererror + 1);
		sbuf[2] = FUNC4(dd, kr_sendbuffererror + 2);

		FUNC3(ppd->dd,
			    "IB%u:%u SendBufMisuse: %04lx %016lx %016lx\n",
			    ppd->dd->unit, ppd->port, sbuf[2], sbuf[1],
			    sbuf[0]);
	}

	if (errs & FUNC0(SDmaUnexpDataErr))
		FUNC3(dd, "IB%u:%u SDmaUnexpData\n", ppd->dd->unit,
			    ppd->port);

	switch (ppd->sdma_state.current_state) {
	case qib_sdma_state_s00_hw_down:
		/* not expecting any interrupts */
		break;

	case qib_sdma_state_s10_hw_start_up_wait:
		/* handled in intr path */
		break;

	case qib_sdma_state_s20_idle:
		/* not expecting any interrupts */
		break;

	case qib_sdma_state_s30_sw_clean_up_wait:
		/* not expecting any interrupts */
		break;

	case qib_sdma_state_s40_hw_clean_up_wait:
		if (errs & FUNC0(SDmaDisabledErr))
			FUNC1(ppd,
				qib_sdma_event_e50_hw_cleaned);
		break;

	case qib_sdma_state_s50_hw_halt_wait:
		/* handled in intr path */
		break;

	case qib_sdma_state_s99_running:
		if (errs & DISABLES_SDMA)
			FUNC1(ppd,
				qib_sdma_event_e7220_err_halted);
		break;
	}

	FUNC6(&ppd->sdma_lock, flags);
}