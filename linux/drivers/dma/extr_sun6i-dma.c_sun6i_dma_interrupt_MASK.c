#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;
struct sun6i_vchan {int irq_type; TYPE_3__ vc; scalar_t__ cyclic; } ;
struct sun6i_pchan {TYPE_2__* desc; TYPE_2__* done; struct sun6i_vchan* vchan; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct sun6i_dma_dev {int num_pchans; int /*<<< orphan*/  task; int /*<<< orphan*/  tasklet_shutdown; struct sun6i_pchan* pchans; scalar_t__ base; TYPE_1__ slave; } ;
typedef  int irqreturn_t ;
struct TYPE_5__ {int /*<<< orphan*/  vd; } ;

/* Variables and functions */
 int DMA_IRQ_CHAN_NR ; 
 int DMA_IRQ_CHAN_WIDTH ; 
 scalar_t__ FUNC0 (int) ; 
 int IRQ_HANDLED ; 
 int IRQ_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *dev_id)
{
	struct sun6i_dma_dev *sdev = dev_id;
	struct sun6i_vchan *vchan;
	struct sun6i_pchan *pchan;
	int i, j, ret = IRQ_NONE;
	u32 status;

	for (i = 0; i < sdev->num_pchans / DMA_IRQ_CHAN_NR; i++) {
		status = FUNC3(sdev->base + FUNC0(i));
		if (!status)
			continue;

		FUNC2(sdev->slave.dev, "DMA irq status %s: 0x%x\n",
			i ? "high" : "low", status);

		FUNC9(status, sdev->base + FUNC0(i));

		for (j = 0; (j < DMA_IRQ_CHAN_NR) && status; j++) {
			pchan = sdev->pchans + j;
			vchan = pchan->vchan;
			if (vchan && (status & vchan->irq_type)) {
				if (vchan->cyclic) {
					FUNC8(&pchan->desc->vd);
				} else {
					FUNC4(&vchan->vc.lock);
					FUNC7(&pchan->desc->vd);
					pchan->done = pchan->desc;
					FUNC5(&vchan->vc.lock);
				}
			}

			status = status >> DMA_IRQ_CHAN_WIDTH;
		}

		if (!FUNC1(&sdev->tasklet_shutdown))
			FUNC6(&sdev->task);
		ret = IRQ_HANDLED;
	}

	return ret;
}