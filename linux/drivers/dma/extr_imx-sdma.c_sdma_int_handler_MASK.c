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
struct sdma_engine {struct sdma_channel* channel; scalar_t__ regs; } ;
struct sdma_desc {int /*<<< orphan*/  vd; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct sdma_channel {int flags; TYPE_1__ vc; struct sdma_desc* desc; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int IMX_DMA_SG_LOOP ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ SDMA_H_INTR ; 
 int /*<<< orphan*/  FUNC0 (int,unsigned long*) ; 
 int FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct sdma_channel*) ; 
 unsigned long FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct sdma_channel*) ; 
 int /*<<< orphan*/  FUNC5 (struct sdma_channel*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *dev_id)
{
	struct sdma_engine *sdma = dev_id;
	unsigned long stat;

	stat = FUNC3(sdma->regs + SDMA_H_INTR);
	FUNC9(stat, sdma->regs + SDMA_H_INTR);
	/* channel 0 is special and not handled here, see run_channel0() */
	stat &= ~1;

	while (stat) {
		int channel = FUNC1(stat) - 1;
		struct sdma_channel *sdmac = &sdma->channel[channel];
		struct sdma_desc *desc;

		FUNC6(&sdmac->vc.lock);
		desc = sdmac->desc;
		if (desc) {
			if (sdmac->flags & IMX_DMA_SG_LOOP) {
				FUNC5(sdmac);
			} else {
				FUNC2(sdmac);
				FUNC8(&desc->vd);
				FUNC4(sdmac);
			}
		}

		FUNC7(&sdmac->vc.lock);
		FUNC0(channel, &stat);
	}

	return IRQ_HANDLED;
}