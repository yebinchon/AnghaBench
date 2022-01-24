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
struct TYPE_2__ {int /*<<< orphan*/  context_new; } ;
struct nv84_fence_priv {TYPE_1__ base; } ;
struct nouveau_drm {struct nv84_fence_priv* fence; } ;

/* Variables and functions */
 int FUNC0 (struct nouveau_drm*) ; 
 int /*<<< orphan*/  nvc0_fence_context_new ; 

int
FUNC1(struct nouveau_drm *drm)
{
	int ret = FUNC0(drm);
	if (ret == 0) {
		struct nv84_fence_priv *priv = drm->fence;
		priv->base.context_new = nvc0_fence_context_new;
	}
	return ret;
}