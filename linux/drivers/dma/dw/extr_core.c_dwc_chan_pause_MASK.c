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
struct TYPE_2__ {int /*<<< orphan*/  device; } ;
struct dw_dma_chan {int /*<<< orphan*/  flags; TYPE_1__ chan; } ;
struct dw_dma {int /*<<< orphan*/  (* suspend_chan ) (struct dw_dma_chan*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CFG_LO ; 
 int DWC_CFGL_FIFO_EMPTY ; 
 int /*<<< orphan*/  DW_DMA_IS_PAUSED ; 
 int FUNC0 (struct dw_dma_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dw_dma_chan*,int) ; 
 struct dw_dma* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct dw_dma_chan *dwc, bool drain)
{
	struct dw_dma *dw = FUNC3(dwc->chan.device);
	unsigned int		count = 20;	/* timeout iterations */

	dw->suspend_chan(dwc, drain);

	while (!(FUNC0(dwc, CFG_LO) & DWC_CFGL_FIFO_EMPTY) && count--)
		FUNC4(2);

	FUNC1(DW_DMA_IS_PAUSED, &dwc->flags);
}