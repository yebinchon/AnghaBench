#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nv84_fence_priv {int /*<<< orphan*/  mutex; int /*<<< orphan*/  bo; } ;
struct TYPE_5__ {int /*<<< orphan*/  sequence; } ;
struct nv84_fence_chan {TYPE_2__ base; int /*<<< orphan*/  vma; } ;
struct nouveau_channel {int chid; struct nv84_fence_chan* fence; TYPE_1__* drm; } ;
struct TYPE_4__ {struct nv84_fence_priv* fence; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct nouveau_channel *chan)
{
	struct nv84_fence_priv *priv = chan->drm->fence;
	struct nv84_fence_chan *fctx = chan->fence;

	FUNC2(priv->bo, chan->chid * 16 / 4, fctx->base.sequence);
	FUNC0(&priv->mutex);
	FUNC5(&fctx->vma);
	FUNC1(&priv->mutex);
	FUNC3(&fctx->base);
	chan->fence = NULL;
	FUNC4(&fctx->base);
}