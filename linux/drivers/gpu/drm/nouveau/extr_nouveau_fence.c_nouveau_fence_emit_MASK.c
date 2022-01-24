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
struct nouveau_fence_priv {scalar_t__ uevent; } ;
struct nouveau_fence_chan {int (* emit ) (struct nouveau_fence*) ;int /*<<< orphan*/  lock; int /*<<< orphan*/  pending; int /*<<< orphan*/  notify; int /*<<< orphan*/  fence_ref; int /*<<< orphan*/  sequence; int /*<<< orphan*/  context; } ;
struct nouveau_fence {int /*<<< orphan*/  head; int /*<<< orphan*/  base; scalar_t__ timeout; struct nouveau_channel* channel; } ;
struct nouveau_channel {TYPE_1__* drm; struct nouveau_fence_chan* fence; } ;
struct TYPE_2__ {scalar_t__ fence; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nouveau_fence_ops_legacy ; 
 int /*<<< orphan*/  nouveau_fence_ops_uevent ; 
 scalar_t__ FUNC4 (struct nouveau_channel*,struct nouveau_fence_chan*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct nouveau_fence*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int
FUNC10(struct nouveau_fence *fence, struct nouveau_channel *chan)
{
	struct nouveau_fence_chan *fctx = chan->fence;
	struct nouveau_fence_priv *priv = (void*)chan->drm->fence;
	int ret;

	fence->channel  = chan;
	fence->timeout  = jiffies + (15 * HZ);

	if (priv->uevent)
		FUNC1(&fence->base, &nouveau_fence_ops_uevent,
			       &fctx->lock, fctx->context, ++fctx->sequence);
	else
		FUNC1(&fence->base, &nouveau_fence_ops_legacy,
			       &fctx->lock, fctx->context, ++fctx->sequence);
	FUNC2(&fctx->fence_ref);

	FUNC9(&fence->base);
	ret = fctx->emit(fence);
	if (!ret) {
		FUNC0(&fence->base);
		FUNC6(&fctx->lock);

		if (FUNC4(chan, fctx))
			FUNC5(&fctx->notify);

		FUNC3(&fence->head, &fctx->pending);
		FUNC7(&fctx->lock);
	}

	return ret;
}