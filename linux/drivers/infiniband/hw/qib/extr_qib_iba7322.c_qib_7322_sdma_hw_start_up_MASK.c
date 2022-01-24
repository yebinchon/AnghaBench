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
struct TYPE_2__ {int current_op; } ;
struct qib_pportdata {TYPE_1__ sdma_state; scalar_t__* sdma_head_dma; } ;

/* Variables and functions */
 int QIB_SDMA_SENDCTRL_OP_CLEANUP ; 
 int /*<<< orphan*/  QIB_SENDCTRL_FLUSH ; 
 int /*<<< orphan*/  FUNC0 (struct qib_pportdata*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct qib_pportdata*) ; 
 int /*<<< orphan*/  FUNC2 (struct qib_pportdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qib_pportdata*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct qib_pportdata *ppd)
{
	/*
	 * Drain all FIFOs.
	 * The hardware doesn't require this but we do it so that verbs
	 * and user applications don't wait for link active to send stale
	 * data.
	 */
	FUNC3(ppd, QIB_SENDCTRL_FLUSH);

	FUNC1(ppd);
	FUNC2(ppd, 0); /* Set SendDmaTail */
	ppd->sdma_head_dma[0] = 0;
	FUNC0(ppd,
		ppd->sdma_state.current_op | QIB_SDMA_SENDCTRL_OP_CLEANUP);
}