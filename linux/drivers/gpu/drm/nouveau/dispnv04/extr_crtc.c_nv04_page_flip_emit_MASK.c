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
struct nv04_page_flip_state {int /*<<< orphan*/  head; } ;
struct nouveau_fence_chan {int /*<<< orphan*/  flip; } ;
struct nouveau_fence {int dummy; } ;
struct nouveau_drm {struct drm_device* dev; } ;
struct nouveau_channel {struct nouveau_drm* drm; struct nouveau_fence_chan* fence; } ;
struct nouveau_bo {int dummy; } ;
struct drm_device {int /*<<< orphan*/  event_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_channel*) ; 
 int /*<<< orphan*/  NV_SW_PAGE_FLIP ; 
 int /*<<< orphan*/  NvSubSw ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_channel*,int) ; 
 int FUNC3 (struct nouveau_channel*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct nouveau_channel*,int,struct nouveau_fence**) ; 
 int FUNC7 (struct nouveau_bo*,struct nouveau_channel*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC10(struct nouveau_channel *chan,
		    struct nouveau_bo *old_bo,
		    struct nouveau_bo *new_bo,
		    struct nv04_page_flip_state *s,
		    struct nouveau_fence **pfence)
{
	struct nouveau_fence_chan *fctx = chan->fence;
	struct nouveau_drm *drm = chan->drm;
	struct drm_device *dev = drm->dev;
	unsigned long flags;
	int ret;

	/* Queue it to the pending list */
	FUNC8(&dev->event_lock, flags);
	FUNC4(&s->head, &fctx->flip);
	FUNC9(&dev->event_lock, flags);

	/* Synchronize with the old framebuffer */
	ret = FUNC7(old_bo, chan, false, false);
	if (ret)
		goto fail;

	/* Emit the pageflip */
	ret = FUNC3(chan, 2);
	if (ret)
		goto fail;

	FUNC0(chan, NvSubSw, NV_SW_PAGE_FLIP, 1);
	FUNC2  (chan, 0x00000000);
	FUNC1 (chan);

	ret = FUNC6(chan, false, pfence);
	if (ret)
		goto fail;

	return 0;
fail:
	FUNC8(&dev->event_lock, flags);
	FUNC5(&s->head);
	FUNC9(&dev->event_lock, flags);
	return ret;
}