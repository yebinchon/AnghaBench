#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned int chancnt; } ;
struct dw_dma {TYPE_2__* chan; TYPE_1__ dma; int /*<<< orphan*/  all_chan_mask; } ;
struct TYPE_6__ {int /*<<< orphan*/  ERROR; int /*<<< orphan*/  DST_TRAN; int /*<<< orphan*/  SRC_TRAN; int /*<<< orphan*/  BLOCK; int /*<<< orphan*/  XFER; } ;
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFG ; 
 int DW_CFG_DMA_EN ; 
 int /*<<< orphan*/  DW_DMA_IS_INITIALIZED ; 
 TYPE_3__ MASK ; 
 int /*<<< orphan*/  FUNC0 (struct dw_dma*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct dw_dma*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dw_dma*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct dw_dma *dw)
{
	unsigned int i;

	FUNC4(dw, CFG, 0);

	FUNC0(dw, MASK.XFER, dw->all_chan_mask);
	FUNC0(dw, MASK.BLOCK, dw->all_chan_mask);
	FUNC0(dw, MASK.SRC_TRAN, dw->all_chan_mask);
	FUNC0(dw, MASK.DST_TRAN, dw->all_chan_mask);
	FUNC0(dw, MASK.ERROR, dw->all_chan_mask);

	while (FUNC3(dw, CFG) & DW_CFG_DMA_EN)
		FUNC2();

	for (i = 0; i < dw->dma.chancnt; i++)
		FUNC1(DW_DMA_IS_INITIALIZED, &dw->chan[i].flags);
}