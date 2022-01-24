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
struct nouveau_fence_chan {scalar_t__ (* sync ) (struct nouveau_fence*,struct nouveau_channel*,struct nouveau_channel*) ;} ;
struct nouveau_fence {int /*<<< orphan*/  channel; } ;
struct nouveau_channel {int /*<<< orphan*/  drm; struct nouveau_fence_chan* fence; } ;
struct TYPE_3__ {struct dma_resv* resv; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct nouveau_bo {TYPE_2__ bo; } ;
struct dma_resv_list {int shared_count; int /*<<< orphan*/ * shared; } ;
struct dma_resv {int dummy; } ;
struct dma_fence {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dma_fence*,int) ; 
 struct dma_fence* FUNC1 (struct dma_resv*) ; 
 struct dma_resv_list* FUNC2 (struct dma_resv*) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_resv*) ; 
 int FUNC4 (struct dma_resv*,int) ; 
 struct nouveau_fence* FUNC5 (struct dma_fence*,int /*<<< orphan*/ ) ; 
 struct nouveau_channel* FUNC6 (int /*<<< orphan*/ ) ; 
 struct dma_fence* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (struct nouveau_fence*,struct nouveau_channel*,struct nouveau_channel*) ; 
 scalar_t__ FUNC11 (struct nouveau_fence*,struct nouveau_channel*,struct nouveau_channel*) ; 

int
FUNC12(struct nouveau_bo *nvbo, struct nouveau_channel *chan, bool exclusive, bool intr)
{
	struct nouveau_fence_chan *fctx = chan->fence;
	struct dma_fence *fence;
	struct dma_resv *resv = nvbo->bo.base.resv;
	struct dma_resv_list *fobj;
	struct nouveau_fence *f;
	int ret = 0, i;

	if (!exclusive) {
		ret = FUNC4(resv, 1);

		if (ret)
			return ret;
	}

	fobj = FUNC2(resv);
	fence = FUNC1(resv);

	if (fence && (!exclusive || !fobj || !fobj->shared_count)) {
		struct nouveau_channel *prev = NULL;
		bool must_wait = true;

		f = FUNC5(fence, chan->drm);
		if (f) {
			FUNC8();
			prev = FUNC6(f->channel);
			if (prev && (prev == chan || fctx->sync(f, prev, chan) == 0))
				must_wait = false;
			FUNC9();
		}

		if (must_wait)
			ret = FUNC0(fence, intr);

		return ret;
	}

	if (!exclusive || !fobj)
		return ret;

	for (i = 0; i < fobj->shared_count && !ret; ++i) {
		struct nouveau_channel *prev = NULL;
		bool must_wait = true;

		fence = FUNC7(fobj->shared[i],
						FUNC3(resv));

		f = FUNC5(fence, chan->drm);
		if (f) {
			FUNC8();
			prev = FUNC6(f->channel);
			if (prev && (prev == chan || fctx->sync(f, prev, chan) == 0))
				must_wait = false;
			FUNC9();
		}

		if (must_wait)
			ret = FUNC0(fence, intr);
	}

	return ret;
}