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
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  desc_issued; } ;
struct sun6i_vchan {TYPE_1__ vc; int /*<<< orphan*/  node; struct sun6i_pchan* phy; } ;
struct sun6i_pchan {scalar_t__ base; } ;
struct sun6i_dma_dev {int /*<<< orphan*/  lock; int /*<<< orphan*/  pending; } ;
struct dma_chan {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 scalar_t__ DMA_CHAN_PAUSE ; 
 int /*<<< orphan*/  DMA_CHAN_PAUSE_RESUME ; 
 int /*<<< orphan*/  FUNC0 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 struct sun6i_dma_dev* FUNC8 (int /*<<< orphan*/ ) ; 
 struct sun6i_vchan* FUNC9 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct dma_chan *chan)
{
	struct sun6i_dma_dev *sdev = FUNC8(chan->device);
	struct sun6i_vchan *vchan = FUNC9(chan);
	struct sun6i_pchan *pchan = vchan->phy;
	unsigned long flags;

	FUNC1(FUNC0(chan), "vchan %p: resume\n", &vchan->vc);

	FUNC5(&vchan->vc.lock, flags);

	if (pchan) {
		FUNC10(DMA_CHAN_PAUSE_RESUME,
		       pchan->base + DMA_CHAN_PAUSE);
	} else if (!FUNC3(&vchan->vc.desc_issued)) {
		FUNC4(&sdev->lock);
		FUNC2(&vchan->node, &sdev->pending);
		FUNC6(&sdev->lock);
	}

	FUNC7(&vchan->vc.lock, flags);

	return 0;
}