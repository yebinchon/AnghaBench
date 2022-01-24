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
struct drm_gem_object {struct drm_device* dev; } ;
struct tegra_bo {struct drm_gem_object gem; } ;
struct drm_device {int dummy; } ;
struct dma_buf {struct drm_gem_object* priv; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 struct drm_gem_object* FUNC0 (struct tegra_bo*) ; 
 scalar_t__ FUNC1 (struct tegra_bo*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_object*) ; 
 struct tegra_bo* FUNC3 (struct drm_device*,struct dma_buf*) ; 
 int /*<<< orphan*/  tegra_gem_prime_dmabuf_ops ; 

struct drm_gem_object *FUNC4(struct drm_device *drm,
					      struct dma_buf *buf)
{
	struct tegra_bo *bo;

	if (buf->ops == &tegra_gem_prime_dmabuf_ops) {
		struct drm_gem_object *gem = buf->priv;

		if (gem->dev == drm) {
			FUNC2(gem);
			return gem;
		}
	}

	bo = FUNC3(drm, buf);
	if (FUNC1(bo))
		return FUNC0(bo);

	return &bo->gem;
}