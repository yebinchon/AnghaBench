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
struct mdc_dma {int /*<<< orphan*/  periph_regs; } ;
struct mdc_chan {int periph; int /*<<< orphan*/  chan_nr; struct mdc_dma* mdma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int PISTACHIO_CR_PERIPH_DMA_ROUTE_MASK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC3(struct mdc_chan *mchan)
{
	struct mdc_dma *mdma = mchan->mdma;

	FUNC2(mdma->periph_regs,
			   FUNC0(mchan->chan_nr),
			   PISTACHIO_CR_PERIPH_DMA_ROUTE_MASK <<
			   FUNC1(mchan->chan_nr),
			   mchan->periph <<
			   FUNC1(mchan->chan_nr));
}