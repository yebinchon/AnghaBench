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
struct edma_chan {int* slot; int alloced; int hw_triggered; int /*<<< orphan*/  ch_num; int /*<<< orphan*/ * tc; TYPE_1__* ecc; int /*<<< orphan*/  vchan; } ;
struct dma_chan {int /*<<< orphan*/  chan_id; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dummy_slot; struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EDMA_MAX_SLOTS ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct edma_chan*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct edma_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct edma_chan*) ; 
 struct edma_chan* FUNC6 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct dma_chan *chan)
{
	struct edma_chan *echan = FUNC6(chan);
	struct device *dev = echan->ecc->dev;
	int i;

	/* Terminate transfers */
	FUNC5(echan);

	FUNC7(&echan->vchan);

	/* Free EDMA PaRAM slots */
	for (i = 0; i < EDMA_MAX_SLOTS; i++) {
		if (echan->slot[i] >= 0) {
			FUNC3(echan->ecc, echan->slot[i]);
			echan->slot[i] = -1;
		}
	}

	/* Set entry slot to the dummy slot */
	FUNC4(echan, echan->ecc->dummy_slot);

	/* Free EDMA channel */
	if (echan->alloced) {
		FUNC2(echan);
		echan->alloced = false;
	}

	echan->tc = NULL;
	echan->hw_triggered = false;

	FUNC1(dev, "Free eDMA channel %d for virt channel %d\n",
		FUNC0(echan->ch_num), chan->chan_id);
}