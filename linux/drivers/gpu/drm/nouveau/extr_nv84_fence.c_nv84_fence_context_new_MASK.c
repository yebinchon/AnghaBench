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
struct nv84_fence_priv {int /*<<< orphan*/  mutex; int /*<<< orphan*/  bo; } ;
struct TYPE_4__ {int /*<<< orphan*/  sequence; int /*<<< orphan*/  sync32; int /*<<< orphan*/  emit32; int /*<<< orphan*/  (* read ) (struct nouveau_channel*) ;int /*<<< orphan*/  sync; int /*<<< orphan*/  emit; } ;
struct nv84_fence_chan {int /*<<< orphan*/  vma; TYPE_2__ base; } ;
struct nouveau_channel {int /*<<< orphan*/  vmm; struct nv84_fence_chan* fence; TYPE_1__* drm; } ;
struct TYPE_3__ {struct nv84_fence_priv* fence; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct nv84_fence_chan* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_channel*,TYPE_2__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct nouveau_channel*) ; 
 int /*<<< orphan*/  nv84_fence_emit ; 
 int /*<<< orphan*/  nv84_fence_emit32 ; 
 int /*<<< orphan*/  FUNC6 (struct nouveau_channel*) ; 
 int /*<<< orphan*/  nv84_fence_sync ; 
 int /*<<< orphan*/  nv84_fence_sync32 ; 

int
FUNC7(struct nouveau_channel *chan)
{
	struct nv84_fence_priv *priv = chan->drm->fence;
	struct nv84_fence_chan *fctx;
	int ret;

	fctx = chan->fence = FUNC0(sizeof(*fctx), GFP_KERNEL);
	if (!fctx)
		return -ENOMEM;

	FUNC3(chan, &fctx->base);
	fctx->base.emit = nv84_fence_emit;
	fctx->base.sync = nv84_fence_sync;
	fctx->base.read = nv84_fence_read;
	fctx->base.emit32 = nv84_fence_emit32;
	fctx->base.sync32 = nv84_fence_sync32;
	fctx->base.sequence = FUNC6(chan);

	FUNC1(&priv->mutex);
	ret = FUNC4(priv->bo, chan->vmm, &fctx->vma);
	FUNC2(&priv->mutex);

	if (ret)
		FUNC5(chan);
	return ret;
}