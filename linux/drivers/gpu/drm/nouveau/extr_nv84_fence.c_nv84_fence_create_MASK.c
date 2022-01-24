#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_6__ {int uevent; int /*<<< orphan*/  context_del; int /*<<< orphan*/  context_new; int /*<<< orphan*/  resume; int /*<<< orphan*/  suspend; int /*<<< orphan*/  (* dtor ) (struct nouveau_drm*) ;} ;
struct nv84_fence_priv {int /*<<< orphan*/  bo; int /*<<< orphan*/  mutex; TYPE_1__ base; } ;
struct TYPE_9__ {int nr; } ;
struct TYPE_7__ {scalar_t__ ram_size; } ;
struct TYPE_8__ {TYPE_2__ info; } ;
struct TYPE_10__ {TYPE_3__ device; } ;
struct nouveau_drm {TYPE_4__ chan; TYPE_5__ client; struct nv84_fence_priv* fence; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int TTM_PL_FLAG_TT ; 
 int TTM_PL_FLAG_UNCACHED ; 
 int TTM_PL_FLAG_VRAM ; 
 struct nv84_fence_priv* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_5__*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nv84_fence_context_del ; 
 int /*<<< orphan*/  nv84_fence_context_new ; 
 int /*<<< orphan*/  FUNC7 (struct nouveau_drm*) ; 
 int /*<<< orphan*/  nv84_fence_resume ; 
 int /*<<< orphan*/  nv84_fence_suspend ; 

int
FUNC8(struct nouveau_drm *drm)
{
	struct nv84_fence_priv *priv;
	u32 domain;
	int ret;

	priv = drm->fence = FUNC0(sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->base.dtor = nv84_fence_destroy;
	priv->base.suspend = nv84_fence_suspend;
	priv->base.resume = nv84_fence_resume;
	priv->base.context_new = nv84_fence_context_new;
	priv->base.context_del = nv84_fence_context_del;

	priv->base.uevent = true;

	FUNC1(&priv->mutex);

	/* Use VRAM if there is any ; otherwise fallback to system memory */
	domain = drm->client.device.info.ram_size != 0 ? TTM_PL_FLAG_VRAM :
			 /*
			  * fences created in sysmem must be non-cached or we
			  * will lose CPU/GPU coherency!
			  */
			 TTM_PL_FLAG_TT | TTM_PL_FLAG_UNCACHED;
	ret = FUNC3(&drm->client, 16 * drm->chan.nr, 0,
			     domain, 0, 0, NULL, NULL, &priv->bo);
	if (ret == 0) {
		ret = FUNC4(priv->bo, domain, false);
		if (ret == 0) {
			ret = FUNC2(priv->bo);
			if (ret)
				FUNC6(priv->bo);
		}
		if (ret)
			FUNC5(NULL, &priv->bo);
	}

	if (ret)
		FUNC7(drm);
	return ret;
}