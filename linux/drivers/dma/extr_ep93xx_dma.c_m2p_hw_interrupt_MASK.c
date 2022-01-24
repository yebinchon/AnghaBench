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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  cookie; } ;
struct ep93xx_dma_desc {int /*<<< orphan*/  size; int /*<<< orphan*/  dst_addr; int /*<<< orphan*/  src_addr; TYPE_1__ txd; } ;
struct ep93xx_dma_chan {scalar_t__ regs; } ;

/* Variables and functions */
 int INTERRUPT_DONE ; 
 int INTERRUPT_NEXT_BUFFER ; 
 int INTERRUPT_UNKNOWN ; 
 scalar_t__ M2P_CONTROL ; 
 int M2P_CONTROL_NFBINT ; 
 int M2P_CONTROL_STALLINT ; 
 scalar_t__ M2P_INTERRUPT ; 
 int M2P_INTERRUPT_ERROR ; 
 int M2P_INTERRUPT_NFB ; 
 int M2P_INTERRUPT_STALL ; 
 int /*<<< orphan*/  FUNC0 (struct ep93xx_dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ep93xx_dma_chan*) ; 
 struct ep93xx_dma_desc* FUNC3 (struct ep93xx_dma_chan*) ; 
 int /*<<< orphan*/  FUNC4 (struct ep93xx_dma_chan*) ; 
 int /*<<< orphan*/  FUNC5 (struct ep93xx_dma_chan*,int) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct ep93xx_dma_chan *edmac)
{
	u32 irq_status = FUNC6(edmac->regs + M2P_INTERRUPT);
	u32 control;

	if (irq_status & M2P_INTERRUPT_ERROR) {
		struct ep93xx_dma_desc *desc = FUNC3(edmac);

		/* Clear the error interrupt */
		FUNC7(1, edmac->regs + M2P_INTERRUPT);

		/*
		 * It seems that there is no easy way of reporting errors back
		 * to client so we just report the error here and continue as
		 * usual.
		 *
		 * Revisit this when there is a mechanism to report back the
		 * errors.
		 */
		FUNC1(FUNC0(edmac),
			"DMA transfer failed! Details:\n"
			"\tcookie	: %d\n"
			"\tsrc_addr	: 0x%08x\n"
			"\tdst_addr	: 0x%08x\n"
			"\tsize		: %zu\n",
			desc->txd.cookie, desc->src_addr, desc->dst_addr,
			desc->size);
	}

	/*
	 * Even latest E2 silicon revision sometimes assert STALL interrupt
	 * instead of NFB. Therefore we treat them equally, basing on the
	 * amount of data we still have to transfer.
	 */
	if (!(irq_status & (M2P_INTERRUPT_STALL | M2P_INTERRUPT_NFB)))
		return INTERRUPT_UNKNOWN;

	if (FUNC2(edmac)) {
		FUNC4(edmac);
		return INTERRUPT_NEXT_BUFFER;
	}

	/* Disable interrupts */
	control = FUNC6(edmac->regs + M2P_CONTROL);
	control &= ~(M2P_CONTROL_STALLINT | M2P_CONTROL_NFBINT);
	FUNC5(edmac, control);

	return INTERRUPT_DONE;
}