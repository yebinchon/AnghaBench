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
typedef  int /*<<< orphan*/  u32 ;
struct ep93xx_dma_desc {int /*<<< orphan*/  size; int /*<<< orphan*/  dst_addr; int /*<<< orphan*/  src_addr; } ;
struct ep93xx_dma_chan {int buffer; scalar_t__ regs; int /*<<< orphan*/  chan; } ;

/* Variables and functions */
 scalar_t__ DMA_MEM_TO_DEV ; 
 scalar_t__ M2P_BASE0 ; 
 scalar_t__ M2P_BASE1 ; 
 scalar_t__ M2P_MAXCNT0 ; 
 scalar_t__ M2P_MAXCNT1 ; 
 int /*<<< orphan*/  FUNC0 (struct ep93xx_dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 struct ep93xx_dma_desc* FUNC3 (struct ep93xx_dma_chan*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct ep93xx_dma_chan *edmac)
{
	struct ep93xx_dma_desc *desc;
	u32 bus_addr;

	desc = FUNC3(edmac);
	if (!desc) {
		FUNC1(FUNC0(edmac), "M2P: empty descriptor list\n");
		return;
	}

	if (FUNC2(&edmac->chan) == DMA_MEM_TO_DEV)
		bus_addr = desc->src_addr;
	else
		bus_addr = desc->dst_addr;

	if (edmac->buffer == 0) {
		FUNC4(desc->size, edmac->regs + M2P_MAXCNT0);
		FUNC4(bus_addr, edmac->regs + M2P_BASE0);
	} else {
		FUNC4(desc->size, edmac->regs + M2P_MAXCNT1);
		FUNC4(bus_addr, edmac->regs + M2P_BASE1);
	}

	edmac->buffer ^= 1;
}