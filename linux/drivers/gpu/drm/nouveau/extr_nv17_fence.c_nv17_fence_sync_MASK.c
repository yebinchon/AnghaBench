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
struct nv10_fence_priv {int sequence; int /*<<< orphan*/  lock; } ;
struct TYPE_6__ {int handle; } ;
struct nv10_fence_chan {TYPE_3__ sema; } ;
struct nouveau_fence {int dummy; } ;
struct nouveau_cli {int /*<<< orphan*/  mutex; } ;
struct TYPE_4__ {scalar_t__ client; } ;
struct nouveau_channel {struct nv10_fence_chan* fence; TYPE_2__* drm; TYPE_1__ user; } ;
struct TYPE_5__ {struct nv10_fence_priv* fence; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_channel*) ; 
 int /*<<< orphan*/  NV11_SUBCHAN_DMA_SEMAPHORE ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_channel*,int) ; 
 int FUNC3 (struct nouveau_channel*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int
FUNC8(struct nouveau_fence *fence,
		struct nouveau_channel *prev, struct nouveau_channel *chan)
{
	struct nouveau_cli *cli = (void *)prev->user.client;
	struct nv10_fence_priv *priv = chan->drm->fence;
	struct nv10_fence_chan *fctx = chan->fence;
	u32 value;
	int ret;

	if (!FUNC4(&cli->mutex))
		return -EBUSY;

	FUNC6(&priv->lock);
	value = priv->sequence;
	priv->sequence += 2;
	FUNC7(&priv->lock);

	ret = FUNC3(prev, 5);
	if (!ret) {
		FUNC0(prev, 0, NV11_SUBCHAN_DMA_SEMAPHORE, 4);
		FUNC2  (prev, fctx->sema.handle);
		FUNC2  (prev, 0);
		FUNC2  (prev, value + 0);
		FUNC2  (prev, value + 1);
		FUNC1 (prev);
	}

	if (!ret && !(ret = FUNC3(chan, 5))) {
		FUNC0(chan, 0, NV11_SUBCHAN_DMA_SEMAPHORE, 4);
		FUNC2  (chan, fctx->sema.handle);
		FUNC2  (chan, 0);
		FUNC2  (chan, value + 1);
		FUNC2  (chan, value + 2);
		FUNC1 (chan);
	}

	FUNC5(&cli->mutex);
	return 0;
}