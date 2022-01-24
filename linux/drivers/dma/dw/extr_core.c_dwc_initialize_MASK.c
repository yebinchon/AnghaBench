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
struct TYPE_3__ {int /*<<< orphan*/  device; } ;
struct dw_dma_chan {int /*<<< orphan*/  flags; int /*<<< orphan*/  mask; TYPE_1__ chan; } ;
struct dw_dma {int /*<<< orphan*/  (* initialize_chan ) (struct dw_dma_chan*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  ERROR; int /*<<< orphan*/  XFER; } ;

/* Variables and functions */
 int /*<<< orphan*/  DW_DMA_IS_INITIALIZED ; 
 TYPE_2__ MASK ; 
 int /*<<< orphan*/  FUNC0 (struct dw_dma*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dw_dma_chan*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct dw_dma* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct dw_dma_chan *dwc)
{
	struct dw_dma *dw = FUNC4(dwc->chan.device);

	if (FUNC3(DW_DMA_IS_INITIALIZED, &dwc->flags))
		return;

	dw->initialize_chan(dwc);

	/* Enable interrupts */
	FUNC0(dw, MASK.XFER, dwc->mask);
	FUNC0(dw, MASK.ERROR, dwc->mask);

	FUNC1(DW_DMA_IS_INITIALIZED, &dwc->flags);
}