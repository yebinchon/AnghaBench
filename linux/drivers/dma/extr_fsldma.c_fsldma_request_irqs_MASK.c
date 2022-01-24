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
struct fsldma_device {scalar_t__ irq; struct fsldma_device** chan; int /*<<< orphan*/  dev; } ;
struct fsldma_chan {scalar_t__ irq; struct fsldma_chan** chan; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int FSL_DMA_MAX_CHANS_PER_DEVICE ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (struct fsldma_device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct fsldma_device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,struct fsldma_device*) ; 
 int /*<<< orphan*/  fsldma_chan_irq ; 
 int /*<<< orphan*/  fsldma_ctrl_irq ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct fsldma_device*) ; 

__attribute__((used)) static int FUNC5(struct fsldma_device *fdev)
{
	struct fsldma_chan *chan;
	int ret;
	int i;

	/* if we have a per-controller IRQ, use that */
	if (fdev->irq) {
		FUNC2(fdev->dev, "request per-controller IRQ\n");
		ret = FUNC4(fdev->irq, fsldma_ctrl_irq, IRQF_SHARED,
				  "fsldma-controller", fdev);
		return ret;
	}

	/* no per-controller IRQ, use the per-channel IRQs */
	for (i = 0; i < FSL_DMA_MAX_CHANS_PER_DEVICE; i++) {
		chan = fdev->chan[i];
		if (!chan)
			continue;

		if (!chan->irq) {
			FUNC1(chan, "interrupts property missing in device tree\n");
			ret = -ENODEV;
			goto out_unwind;
		}

		FUNC0(chan, "request per-channel IRQ\n");
		ret = FUNC4(chan->irq, fsldma_chan_irq, IRQF_SHARED,
				  "fsldma-chan", chan);
		if (ret) {
			FUNC1(chan, "unable to request per-channel IRQ\n");
			goto out_unwind;
		}
	}

	return 0;

out_unwind:
	for (/* none */; i >= 0; i--) {
		chan = fdev->chan[i];
		if (!chan)
			continue;

		if (!chan->irq)
			continue;

		FUNC3(chan->irq, chan);
	}

	return ret;
}