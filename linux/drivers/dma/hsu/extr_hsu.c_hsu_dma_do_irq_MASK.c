#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct hsu_dma_desc {scalar_t__ active; scalar_t__ nents; int /*<<< orphan*/  status; int /*<<< orphan*/  vdesc; } ;
struct hsu_dma_chip {TYPE_1__* hsu; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct hsu_dma_chan {TYPE_2__ vchan; struct hsu_dma_desc* desc; } ;
struct TYPE_3__ {unsigned short nr_channels; struct hsu_dma_chan* chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_COMPLETE ; 
 int /*<<< orphan*/  DMA_ERROR ; 
 int HSU_CH_SR_CHE ; 
 int /*<<< orphan*/  FUNC0 (struct hsu_dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct hsu_dma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct hsu_dma_chip *chip, unsigned short nr, u32 status)
{
	struct hsu_dma_chan *hsuc;
	struct hsu_dma_desc *desc;
	unsigned long flags;

	/* Sanity check */
	if (nr >= chip->hsu->nr_channels)
		return 0;

	hsuc = &chip->hsu->chan[nr];

	FUNC2(&hsuc->vchan.lock, flags);
	desc = hsuc->desc;
	if (desc) {
		if (status & HSU_CH_SR_CHE) {
			desc->status = DMA_ERROR;
		} else if (desc->active < desc->nents) {
			FUNC0(hsuc);
		} else {
			FUNC4(&desc->vdesc);
			desc->status = DMA_COMPLETE;
			FUNC1(hsuc);
		}
	}
	FUNC3(&hsuc->vchan.lock, flags);

	return 1;
}