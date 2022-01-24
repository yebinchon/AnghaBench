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
struct virt_dma_desc {int /*<<< orphan*/  node; } ;
struct virt_dma_chan {int /*<<< orphan*/  lock; int /*<<< orphan*/  desc_completed; } ;
struct sun6i_vchan {int cyclic; struct virt_dma_chan vc; struct sun6i_pchan* phy; int /*<<< orphan*/  node; } ;
struct sun6i_pchan {int /*<<< orphan*/ * done; TYPE_1__* desc; int /*<<< orphan*/ * vchan; scalar_t__ base; } ;
struct sun6i_dma_dev {int /*<<< orphan*/  lock; } ;
struct dma_chan {int /*<<< orphan*/  device; } ;
struct TYPE_2__ {struct virt_dma_desc vd; } ;

/* Variables and functions */
 scalar_t__ DMA_CHAN_ENABLE ; 
 int /*<<< orphan*/  DMA_CHAN_ENABLE_STOP ; 
 scalar_t__ DMA_CHAN_PAUSE ; 
 int /*<<< orphan*/  DMA_CHAN_PAUSE_RESUME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  head ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct sun6i_dma_dev* FUNC7 (int /*<<< orphan*/ ) ; 
 struct sun6i_vchan* FUNC8 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC9 (struct virt_dma_chan*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct virt_dma_chan*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct dma_chan *chan)
{
	struct sun6i_dma_dev *sdev = FUNC7(chan->device);
	struct sun6i_vchan *vchan = FUNC8(chan);
	struct sun6i_pchan *pchan = vchan->phy;
	unsigned long flags;
	FUNC0(head);

	FUNC3(&sdev->lock);
	FUNC2(&vchan->node);
	FUNC5(&sdev->lock);

	FUNC4(&vchan->vc.lock, flags);

	if (vchan->cyclic) {
		vchan->cyclic = false;
		if (pchan && pchan->desc) {
			struct virt_dma_desc *vd = &pchan->desc->vd;
			struct virt_dma_chan *vc = &vchan->vc;

			FUNC1(&vd->node, &vc->desc_completed);
		}
	}

	FUNC10(&vchan->vc, &head);

	if (pchan) {
		FUNC11(DMA_CHAN_ENABLE_STOP, pchan->base + DMA_CHAN_ENABLE);
		FUNC11(DMA_CHAN_PAUSE_RESUME, pchan->base + DMA_CHAN_PAUSE);

		vchan->phy = NULL;
		pchan->vchan = NULL;
		pchan->desc = NULL;
		pchan->done = NULL;
	}

	FUNC6(&vchan->vc.lock, flags);

	FUNC9(&vchan->vc, &head);

	return 0;
}