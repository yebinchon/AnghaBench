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
struct dma_device {int /*<<< orphan*/  channels; } ;
struct ioatdma_device {struct ioatdma_chan** idx; scalar_t__ reg_base; struct dma_device dma_dev; } ;
struct dma_chan {int /*<<< orphan*/  device_node; struct dma_device* device; } ;
struct ioatdma_chan {int /*<<< orphan*/  cleanup_task; int /*<<< orphan*/  timer; struct dma_chan dma_chan; int /*<<< orphan*/  cleanup_lock; scalar_t__ reg_base; struct ioatdma_device* ioat_dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dma_chan*) ; 
 int /*<<< orphan*/  ioat_cleanup_event ; 
 int /*<<< orphan*/  ioat_timer_event ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct ioatdma_device *ioat_dma,
		  struct ioatdma_chan *ioat_chan, int idx)
{
	struct dma_device *dma = &ioat_dma->dma_dev;
	struct dma_chan *c = &ioat_chan->dma_chan;
	unsigned long data = (unsigned long) c;

	ioat_chan->ioat_dma = ioat_dma;
	ioat_chan->reg_base = ioat_dma->reg_base + (0x80 * (idx + 1));
	FUNC2(&ioat_chan->cleanup_lock);
	ioat_chan->dma_chan.device = dma;
	FUNC0(&ioat_chan->dma_chan);
	FUNC1(&ioat_chan->dma_chan.device_node, &dma->channels);
	ioat_dma->idx[idx] = ioat_chan;
	FUNC4(&ioat_chan->timer, ioat_timer_event, 0);
	FUNC3(&ioat_chan->cleanup_task, ioat_cleanup_event, data);
}