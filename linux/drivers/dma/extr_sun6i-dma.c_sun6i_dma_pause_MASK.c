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
struct sun6i_vchan {int /*<<< orphan*/  node; int /*<<< orphan*/  vc; struct sun6i_pchan* phy; } ;
struct sun6i_pchan {scalar_t__ base; } ;
struct sun6i_dma_dev {int /*<<< orphan*/  lock; } ;
struct dma_chan {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 scalar_t__ DMA_CHAN_PAUSE ; 
 int /*<<< orphan*/  DMA_CHAN_PAUSE_PAUSE ; 
 int /*<<< orphan*/  FUNC0 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct sun6i_dma_dev* FUNC5 (int /*<<< orphan*/ ) ; 
 struct sun6i_vchan* FUNC6 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct dma_chan *chan)
{
	struct sun6i_dma_dev *sdev = FUNC5(chan->device);
	struct sun6i_vchan *vchan = FUNC6(chan);
	struct sun6i_pchan *pchan = vchan->phy;

	FUNC1(FUNC0(chan), "vchan %p: pause\n", &vchan->vc);

	if (pchan) {
		FUNC7(DMA_CHAN_PAUSE_PAUSE,
		       pchan->base + DMA_CHAN_PAUSE);
	} else {
		FUNC3(&sdev->lock);
		FUNC2(&vchan->node);
		FUNC4(&sdev->lock);
	}

	return 0;
}