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
struct vc4_bo {scalar_t__ validated_shader; } ;
struct drm_gem_object {int dummy; } ;
struct dma_buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EINVAL ; 
 struct dma_buf* FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct dma_buf*) ; 
 struct dma_buf* FUNC4 (struct drm_gem_object*,int) ; 
 struct vc4_bo* FUNC5 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC6 (struct vc4_bo*) ; 
 int FUNC7 (struct vc4_bo*) ; 

struct dma_buf * FUNC8(struct drm_gem_object *obj, int flags)
{
	struct vc4_bo *bo = FUNC5(obj);
	struct dma_buf *dmabuf;
	int ret;

	if (bo->validated_shader) {
		FUNC0("Attempting to export shader BO\n");
		return FUNC2(-EINVAL);
	}

	/* Note: as soon as the BO is exported it becomes unpurgeable, because
	 * noone ever decrements the usecnt even if the reference held by the
	 * exported BO is released. This shouldn't be a problem since we don't
	 * expect exported BOs to be marked as purgeable.
	 */
	ret = FUNC7(bo);
	if (ret) {
		FUNC1("Failed to increment BO usecnt\n");
		return FUNC2(ret);
	}

	dmabuf = FUNC4(obj, flags);
	if (FUNC3(dmabuf))
		FUNC6(bo);

	return dmabuf;
}