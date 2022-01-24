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
struct TYPE_2__ {int /*<<< orphan*/  device_node; struct dma_device* device; } ;
struct virt_dma_chan {TYPE_1__ chan; int /*<<< orphan*/  task; int /*<<< orphan*/  desc_completed; int /*<<< orphan*/  desc_issued; int /*<<< orphan*/  desc_submitted; int /*<<< orphan*/  desc_allocated; int /*<<< orphan*/  lock; } ;
struct dma_device {int /*<<< orphan*/  channels; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  vchan_complete ; 

void FUNC5(struct virt_dma_chan *vc, struct dma_device *dmadev)
{
	FUNC1(&vc->chan);

	FUNC3(&vc->lock);
	FUNC0(&vc->desc_allocated);
	FUNC0(&vc->desc_submitted);
	FUNC0(&vc->desc_issued);
	FUNC0(&vc->desc_completed);

	FUNC4(&vc->task, vchan_complete, (unsigned long)vc);

	vc->chan.device = dmadev;
	FUNC2(&vc->chan.device_node, &dmadev->channels);
}