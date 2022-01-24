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
struct sg_table {int dummy; } ;
struct lima_device {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct lima_bo {struct drm_gem_object gem; } ;
struct drm_device {int dummy; } ;
struct dma_buf_attachment {TYPE_1__* dmabuf; } ;
struct TYPE_2__ {int /*<<< orphan*/  size; } ;

/* Variables and functions */
 struct drm_gem_object* FUNC0 (struct lima_bo*) ; 
 scalar_t__ FUNC1 (struct lima_bo*) ; 
 struct lima_bo* FUNC2 (struct lima_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sg_table*) ; 
 struct lima_device* FUNC3 (struct drm_device*) ; 

struct drm_gem_object *FUNC4(
	struct drm_device *dev, struct dma_buf_attachment *attach,
	struct sg_table *sgt)
{
	struct lima_device *ldev = FUNC3(dev);
	struct lima_bo *bo;

	bo = FUNC2(ldev, attach->dmabuf->size, 0, sgt);
	if (FUNC1(bo))
		return FUNC0(bo);

	return &bo->gem;
}