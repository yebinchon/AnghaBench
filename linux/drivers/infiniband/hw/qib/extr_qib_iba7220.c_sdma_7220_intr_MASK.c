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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_2__ {int current_state; } ;
struct qib_pportdata {int /*<<< orphan*/  sdma_lock; TYPE_1__ sdma_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qib_pportdata*) ; 
 int /*<<< orphan*/  FUNC1 (struct qib_pportdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qib_sdma_event_e20_hw_started ; 
 int /*<<< orphan*/  qib_sdma_event_e60_hw_halted ; 
#define  qib_sdma_state_s00_hw_down 134 
#define  qib_sdma_state_s10_hw_start_up_wait 133 
#define  qib_sdma_state_s20_idle 132 
#define  qib_sdma_state_s30_sw_clean_up_wait 131 
#define  qib_sdma_state_s40_hw_clean_up_wait 130 
#define  qib_sdma_state_s50_hw_halt_wait 129 
#define  qib_sdma_state_s99_running 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct qib_pportdata *ppd, u64 istat)
{
	unsigned long flags;

	FUNC2(&ppd->sdma_lock, flags);

	switch (ppd->sdma_state.current_state) {
	case qib_sdma_state_s00_hw_down:
		break;

	case qib_sdma_state_s10_hw_start_up_wait:
		FUNC1(ppd, qib_sdma_event_e20_hw_started);
		break;

	case qib_sdma_state_s20_idle:
		break;

	case qib_sdma_state_s30_sw_clean_up_wait:
		break;

	case qib_sdma_state_s40_hw_clean_up_wait:
		break;

	case qib_sdma_state_s50_hw_halt_wait:
		FUNC1(ppd, qib_sdma_event_e60_hw_halted);
		break;

	case qib_sdma_state_s99_running:
		/* too chatty to print here */
		FUNC0(ppd);
		break;
	}
	FUNC3(&ppd->sdma_lock, flags);
}