#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct drm_device {scalar_t__ dev_private; } ;
typedef  int /*<<< orphan*/  drm_via_sg_info_t ;
struct TYPE_10__ {TYPE_4__* blit_queues; } ;
typedef  TYPE_2__ drm_via_private_t ;
struct TYPE_9__ {int engine; scalar_t__ sync_handle; } ;
struct TYPE_11__ {TYPE_1__ sync; scalar_t__ to_fb; } ;
typedef  TYPE_3__ drm_via_dmablit_t ;
struct TYPE_12__ {scalar_t__ head; int /*<<< orphan*/  blit_lock; scalar_t__ cur_blit_handle; int /*<<< orphan*/  num_outstanding; int /*<<< orphan*/ ** blits; } ;
typedef  TYPE_4__ drm_via_blitq_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ VIA_NUM_BLIT_SLOTS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC5 (struct drm_device*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FUNC6 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 

__attribute__((used)) static int
FUNC9(struct drm_device *dev, drm_via_dmablit_t *xfer)
{
	drm_via_private_t *dev_priv = (drm_via_private_t *)dev->dev_private;
	drm_via_sg_info_t *vsg;
	drm_via_blitq_t *blitq;
	int ret;
	int engine;
	unsigned long irqsave;

	if (dev_priv == NULL) {
		FUNC0("Called without initialization.\n");
		return -EINVAL;
	}

	engine = (xfer->to_fb) ? 0 : 1;
	blitq = dev_priv->blit_queues + engine;
	if (0 != (ret = FUNC6(blitq, engine)))
		return ret;
	if (NULL == (vsg = FUNC2(sizeof(*vsg), GFP_KERNEL))) {
		FUNC8(blitq);
		return -ENOMEM;
	}
	if (0 != (ret = FUNC5(dev, vsg, xfer))) {
		FUNC8(blitq);
		FUNC1(vsg);
		return ret;
	}
	FUNC3(&blitq->blit_lock, irqsave);

	blitq->blits[blitq->head++] = vsg;
	if (blitq->head >= VIA_NUM_BLIT_SLOTS)
		blitq->head = 0;
	blitq->num_outstanding++;
	xfer->sync.sync_handle = ++blitq->cur_blit_handle;

	FUNC4(&blitq->blit_lock, irqsave);
	xfer->sync.engine = engine;

	FUNC7(dev, engine, 0);

	return 0;
}