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
struct hfi1_devdata {scalar_t__ icode; int /*<<< orphan*/  vcu; } ;

/* Variables and functions */
 unsigned long long HFI1_CREDIT_RETURN_RATE ; 
 scalar_t__ ICODE_FUNCTIONAL_SIMULATOR ; 
 int /*<<< orphan*/  SEND_CM_TIMER_CTRL ; 
 int /*<<< orphan*/  SEND_CTXT_ERR_MASK ; 
 int /*<<< orphan*/  SEND_DMA_ENG_ERR_MASK ; 
 int /*<<< orphan*/  SEND_DMA_ERR_MASK ; 
 int /*<<< orphan*/  SEND_EGRESS_ERR_MASK ; 
 int /*<<< orphan*/  SEND_ERR_MASK ; 
 int /*<<< orphan*/  SEND_PIO_ERR_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hfi1_devdata*) ; 
 int FUNC2 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_devdata*,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC4 (struct hfi1_devdata*,int,int /*<<< orphan*/ ,unsigned long long) ; 

__attribute__((used)) static void FUNC5(struct hfi1_devdata *dd)
{
	int i;

	/* enable all PIO, SDMA, general, and Egress errors */
	FUNC3(dd, SEND_PIO_ERR_MASK, ~0ull);
	FUNC3(dd, SEND_DMA_ERR_MASK, ~0ull);
	FUNC3(dd, SEND_ERR_MASK, ~0ull);
	FUNC3(dd, SEND_EGRESS_ERR_MASK, ~0ull);

	/* enable all per-context and per-SDMA engine errors */
	for (i = 0; i < FUNC2(dd); i++)
		FUNC4(dd, i, SEND_CTXT_ERR_MASK, ~0ull);
	for (i = 0; i < FUNC1(dd); i++)
		FUNC4(dd, i, SEND_DMA_ENG_ERR_MASK, ~0ull);

	/* set the local CU to AU mapping */
	FUNC0(dd, dd->vcu);

	/*
	 * Set reasonable default for Credit Return Timer
	 * Don't set on Simulator - causes it to choke.
	 */
	if (dd->icode != ICODE_FUNCTIONAL_SIMULATOR)
		FUNC3(dd, SEND_CM_TIMER_CTRL, HFI1_CREDIT_RETURN_RATE);
}