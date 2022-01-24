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
struct ep93xx_dma_desc {int /*<<< orphan*/  size; int /*<<< orphan*/  dst_addr; int /*<<< orphan*/  src_addr; } ;
struct ep93xx_dma_chan {int buffer; scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ M2M_BCR0 ; 
 scalar_t__ M2M_BCR1 ; 
 scalar_t__ M2M_DAR_BASE0 ; 
 scalar_t__ M2M_DAR_BASE1 ; 
 scalar_t__ M2M_SAR_BASE0 ; 
 scalar_t__ M2M_SAR_BASE1 ; 
 int /*<<< orphan*/  FUNC0 (struct ep93xx_dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct ep93xx_dma_desc* FUNC2 (struct ep93xx_dma_chan*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct ep93xx_dma_chan *edmac)
{
	struct ep93xx_dma_desc *desc;

	desc = FUNC2(edmac);
	if (!desc) {
		FUNC1(FUNC0(edmac), "M2M: empty descriptor list\n");
		return;
	}

	if (edmac->buffer == 0) {
		FUNC3(desc->src_addr, edmac->regs + M2M_SAR_BASE0);
		FUNC3(desc->dst_addr, edmac->regs + M2M_DAR_BASE0);
		FUNC3(desc->size, edmac->regs + M2M_BCR0);
	} else {
		FUNC3(desc->src_addr, edmac->regs + M2M_SAR_BASE1);
		FUNC3(desc->dst_addr, edmac->regs + M2M_DAR_BASE1);
		FUNC3(desc->size, edmac->regs + M2M_BCR1);
	}

	edmac->buffer ^= 1;
}