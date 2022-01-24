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
struct TYPE_4__ {size_t current_state; } ;
struct qib_pportdata {int /*<<< orphan*/  sdma_lock; TYPE_2__ sdma_state; TYPE_1__* cpspec; int /*<<< orphan*/  port; struct qib_devdata* dd; } ;
struct qib_devdata {int /*<<< orphan*/  unit; } ;
struct TYPE_3__ {int /*<<< orphan*/  sdmamsgbuf; } ;

/* Variables and functions */
 int QIB_E_P_SDMAERRS ; 
 int QIB_E_P_SDMAHALT ; 
 int QIB_E_P_SDMAUNEXPDATA ; 
 int /*<<< orphan*/  FUNC0 (struct qib_pportdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qib_pportdata*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qib_7322p_error_msgs ; 
 int /*<<< orphan*/  FUNC3 (struct qib_devdata*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qib_devdata*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qib_sdma_event_e20_hw_started ; 
 int /*<<< orphan*/  qib_sdma_event_e50_hw_cleaned ; 
 int /*<<< orphan*/  qib_sdma_event_e60_hw_halted ; 
 int /*<<< orphan*/  qib_sdma_event_e7322_err_halted ; 
 int /*<<< orphan*/ * qib_sdma_state_names ; 
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

	errs &= QIB_E_P_SDMAERRS;
	FUNC2(ppd->cpspec->sdmamsgbuf, sizeof(ppd->cpspec->sdmamsgbuf),
		   errs, qib_7322p_error_msgs);

	if (errs & QIB_E_P_SDMAUNEXPDATA)
		FUNC3(dd, "IB%u:%u SDmaUnexpData\n", dd->unit,
			    ppd->port);

	FUNC5(&ppd->sdma_lock, flags);

	if (errs != QIB_E_P_SDMAHALT) {
		/* SDMA errors have QIB_E_P_SDMAHALT and another bit set */
		FUNC4(dd, ppd->port,
			"SDMA %s 0x%016llx %s\n",
			qib_sdma_state_names[ppd->sdma_state.current_state],
			errs, ppd->cpspec->sdmamsgbuf);
		FUNC1(ppd);
	}

	switch (ppd->sdma_state.current_state) {
	case qib_sdma_state_s00_hw_down:
		break;

	case qib_sdma_state_s10_hw_start_up_wait:
		if (errs & QIB_E_P_SDMAHALT)
			FUNC0(ppd,
				qib_sdma_event_e20_hw_started);
		break;

	case qib_sdma_state_s20_idle:
		break;

	case qib_sdma_state_s30_sw_clean_up_wait:
		break;

	case qib_sdma_state_s40_hw_clean_up_wait:
		if (errs & QIB_E_P_SDMAHALT)
			FUNC0(ppd,
				qib_sdma_event_e50_hw_cleaned);
		break;

	case qib_sdma_state_s50_hw_halt_wait:
		if (errs & QIB_E_P_SDMAHALT)
			FUNC0(ppd,
				qib_sdma_event_e60_hw_halted);
		break;

	case qib_sdma_state_s99_running:
		FUNC0(ppd, qib_sdma_event_e7322_err_halted);
		FUNC0(ppd, qib_sdma_event_e60_hw_halted);
		break;
	}

	FUNC6(&ppd->sdma_lock, flags);
}