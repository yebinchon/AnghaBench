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
struct drm_device {int /*<<< orphan*/  pdev; scalar_t__ dev_private; } ;
struct TYPE_3__ {TYPE_2__* blit_queues; } ;
typedef  TYPE_1__ drm_via_private_t ;
struct TYPE_4__ {int num_free; int /*<<< orphan*/  poll_timer; int /*<<< orphan*/  wq; int /*<<< orphan*/  busy_queue; int /*<<< orphan*/ * blit_queue; int /*<<< orphan*/  blit_lock; scalar_t__ aborting; scalar_t__ is_active; scalar_t__ num_outstanding; scalar_t__ serviced; scalar_t__ cur; scalar_t__ head; scalar_t__ done_blit_handle; scalar_t__ cur_blit_handle; struct drm_device* dev; } ;
typedef  TYPE_2__ drm_via_blitq_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int VIA_NUM_BLIT_ENGINES ; 
 int VIA_NUM_BLIT_SLOTS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  via_dmablit_timer ; 
 int /*<<< orphan*/  via_dmablit_workqueue ; 

void
FUNC5(struct drm_device *dev)
{
	int i, j;
	drm_via_private_t *dev_priv = (drm_via_private_t *)dev->dev_private;
	drm_via_blitq_t *blitq;

	FUNC2(dev->pdev);

	for (i = 0; i < VIA_NUM_BLIT_ENGINES; ++i) {
		blitq = dev_priv->blit_queues + i;
		blitq->dev = dev;
		blitq->cur_blit_handle = 0;
		blitq->done_blit_handle = 0;
		blitq->head = 0;
		blitq->cur = 0;
		blitq->serviced = 0;
		blitq->num_free = VIA_NUM_BLIT_SLOTS - 1;
		blitq->num_outstanding = 0;
		blitq->is_active = 0;
		blitq->aborting = 0;
		FUNC3(&blitq->blit_lock);
		for (j = 0; j < VIA_NUM_BLIT_SLOTS; ++j)
			FUNC1(blitq->blit_queue + j);
		FUNC1(&blitq->busy_queue);
		FUNC0(&blitq->wq, via_dmablit_workqueue);
		FUNC4(&blitq->poll_timer, via_dmablit_timer, 0);
	}
}