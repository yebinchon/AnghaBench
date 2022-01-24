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
typedef  int /*<<< orphan*/  u32 ;
struct nv84_fence_priv {int /*<<< orphan*/ * suspend; int /*<<< orphan*/  bo; } ;
struct TYPE_2__ {int nr; } ;
struct nouveau_drm {TYPE_1__ chan; struct nv84_fence_priv* fence; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC3(struct nouveau_drm *drm)
{
	struct nv84_fence_priv *priv = drm->fence;
	int i;

	priv->suspend = FUNC2(FUNC0(sizeof(u32), drm->chan.nr));
	if (priv->suspend) {
		for (i = 0; i < drm->chan.nr; i++)
			priv->suspend[i] = FUNC1(priv->bo, i*4);
	}

	return priv->suspend != NULL;
}