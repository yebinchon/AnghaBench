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
struct drm_vgem_fence_attach {int flags; int out_fence; int /*<<< orphan*/  handle; scalar_t__ pad; } ;
struct drm_gem_object {struct dma_resv* resv; } ;
struct drm_file {struct vgem_file* driver_priv; } ;
struct drm_device {int dummy; } ;
struct dma_resv {int dummy; } ;
struct dma_fence {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int VGEM_FENCE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_resv*,struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_resv*,struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC4 (struct dma_resv*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct dma_resv*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct dma_resv*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct dma_resv*) ; 
 struct drm_gem_object* FUNC8 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_gem_object*) ; 
 int FUNC10 (int /*<<< orphan*/ *,struct dma_fence*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct dma_fence* FUNC13 (struct vgem_file*,int) ; 

int FUNC14(struct drm_device *dev,
			    void *data,
			    struct drm_file *file)
{
	struct drm_vgem_fence_attach *arg = data;
	struct vgem_file *vfile = file->driver_priv;
	struct dma_resv *resv;
	struct drm_gem_object *obj;
	struct dma_fence *fence;
	int ret;

	if (arg->flags & ~VGEM_FENCE_WRITE)
		return -EINVAL;

	if (arg->pad)
		return -EINVAL;

	obj = FUNC8(file, arg->handle);
	if (!obj)
		return -ENOENT;

	fence = FUNC13(vfile, arg->flags);
	if (!fence) {
		ret = -ENOMEM;
		goto err;
	}

	/* Check for a conflicting fence */
	resv = obj->resv;
	if (!FUNC6(resv,
						  arg->flags & VGEM_FENCE_WRITE)) {
		ret = -EBUSY;
		goto err_fence;
	}

	/* Expose the fence via the dma-buf */
	ret = 0;
	FUNC4(resv, NULL);
	if (arg->flags & VGEM_FENCE_WRITE)
		FUNC2(resv, fence);
	else if ((ret = FUNC5(resv, 1)) == 0)
		FUNC3(resv, fence);
	FUNC7(resv);

	/* Record the fence in our idr for later signaling */
	if (ret == 0) {
		FUNC11(&vfile->fence_mutex);
		ret = FUNC10(&vfile->fence_idr, fence, 1, 0, GFP_KERNEL);
		FUNC12(&vfile->fence_mutex);
		if (ret > 0) {
			arg->out_fence = ret;
			ret = 0;
		}
	}
err_fence:
	if (ret) {
		FUNC1(fence);
		FUNC0(fence);
	}
err:
	FUNC9(obj);
	return ret;
}