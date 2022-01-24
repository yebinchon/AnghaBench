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
struct mcde {int /*<<< orphan*/  dev; scalar_t__ regs; scalar_t__ te_sync; int /*<<< orphan*/  mdsi; } ;

/* Variables and functions */
 scalar_t__ MCDE_CHNL0SYNCHSW ; 
 int /*<<< orphan*/  MCDE_CHNLXSYNCHSW_SW_TRIG ; 
 int /*<<< orphan*/  MCDE_FIFO_A ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mcde*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mcde*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct mcde *mcde)
{
	/* Request a TE ACK */
	if (mcde->te_sync)
		FUNC2(mcde->mdsi);

	/* Enable FIFO A flow */
	FUNC3(mcde, MCDE_FIFO_A);

	if (mcde->te_sync) {
		/*
		 * If oneshot mode is enabled, the flow will be disabled
		 * when the TE0 IRQ arrives in the interrupt handler. Otherwise
		 * updates are continuously streamed to the display after this
		 * point.
		 */
		FUNC0(mcde->dev, "sent TE0 framebuffer update\n");
		return;
	}

	/* Trigger a software sync out on channel 0 */
	FUNC4(MCDE_CHNLXSYNCHSW_SW_TRIG,
	       mcde->regs + MCDE_CHNL0SYNCHSW);

	/*
	 * Disable FIFO A flow again: since we are using TE sync we
	 * need to wait for the FIFO to drain before we continue
	 * so repeated calls to this function will not cause a mess
	 * in the hardware by pushing updates will updates are going
	 * on already.
	 */
	FUNC1(mcde, MCDE_FIFO_A, true);

	FUNC0(mcde->dev, "sent SW framebuffer update\n");
}