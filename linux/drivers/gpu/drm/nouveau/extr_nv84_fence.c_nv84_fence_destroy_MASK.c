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
struct nv84_fence_priv {scalar_t__ bo; } ;
struct nouveau_drm {struct nv84_fence_priv* fence; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nv84_fence_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void
FUNC4(struct nouveau_drm *drm)
{
	struct nv84_fence_priv *priv = drm->fence;
	FUNC2(priv->bo);
	if (priv->bo)
		FUNC3(priv->bo);
	FUNC1(NULL, &priv->bo);
	drm->fence = NULL;
	FUNC0(priv);
}