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
struct vgem_file {int /*<<< orphan*/  fence_mutex; int /*<<< orphan*/  fence_idr; } ;
struct drm_vgem_fence_signal {int /*<<< orphan*/  fence; scalar_t__ flags; } ;
struct drm_file {struct vgem_file* driver_priv; } ;
struct drm_device {int dummy; } ;
struct dma_fence {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ETIMEDOUT ; 
 scalar_t__ FUNC0 (struct dma_fence*) ; 
 int FUNC1 (struct dma_fence*) ; 
 scalar_t__ FUNC2 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC4 (struct dma_fence*) ; 
 struct dma_fence* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct drm_device *dev,
			    void *data,
			    struct drm_file *file)
{
	struct vgem_file *vfile = file->driver_priv;
	struct drm_vgem_fence_signal *arg = data;
	struct dma_fence *fence;
	int ret = 0;

	if (arg->flags)
		return -EINVAL;

	FUNC6(&vfile->fence_mutex);
	fence = FUNC5(&vfile->fence_idr, NULL, arg->fence);
	FUNC7(&vfile->fence_mutex);
	if (!fence)
		return -ENOENT;
	if (FUNC0(fence))
		return FUNC1(fence);

	if (FUNC2(fence))
		ret = -ETIMEDOUT;

	FUNC4(fence);
	FUNC3(fence);
	return ret;
}