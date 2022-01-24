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
typedef  int u32 ;
struct fsldma_device {int feature; int /*<<< orphan*/  dev; struct fsldma_chan** chan; int /*<<< orphan*/  regs; } ;
struct fsldma_chan {int id; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int FSL_DMA_BIG_ENDIAN ; 
 int FSL_DMA_MAX_CHANS_PER_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,struct fsldma_chan*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *data)
{
	struct fsldma_device *fdev = data;
	struct fsldma_chan *chan;
	unsigned int handled = 0;
	u32 gsr, mask;
	int i;

	gsr = (fdev->feature & FSL_DMA_BIG_ENDIAN) ? FUNC3(fdev->regs)
						   : FUNC4(fdev->regs);
	mask = 0xff000000;
	FUNC1(fdev->dev, "IRQ: gsr 0x%.8x\n", gsr);

	for (i = 0; i < FSL_DMA_MAX_CHANS_PER_DEVICE; i++) {
		chan = fdev->chan[i];
		if (!chan)
			continue;

		if (gsr & mask) {
			FUNC1(fdev->dev, "IRQ: chan %d\n", chan->id);
			FUNC2(irq, chan);
			handled++;
		}

		gsr &= ~mask;
		mask >>= 8;
	}

	return FUNC0(handled);
}