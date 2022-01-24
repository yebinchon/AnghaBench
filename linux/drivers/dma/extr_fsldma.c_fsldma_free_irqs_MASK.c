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
 int FSL_DMA_MAX_CHANS_PER_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct fsldma_device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct fsldma_device*) ; 

__attribute__((used)) static void FUNC3(struct fsldma_device *fdev)
{
	struct fsldma_chan *chan;
	int i;

	if (fdev->irq) {
		FUNC1(fdev->dev, "free per-controller IRQ\n");
		FUNC2(fdev->irq, fdev);
		return;
	}

	for (i = 0; i < FSL_DMA_MAX_CHANS_PER_DEVICE; i++) {
		chan = fdev->chan[i];
		if (chan && chan->irq) {
			FUNC0(chan, "free per-channel IRQ\n");
			FUNC2(chan->irq, chan);
		}
	}
}