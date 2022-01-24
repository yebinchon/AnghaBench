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
struct ww_acquire_ctx {int dummy; } ;
struct virtio_gpu_object_params {int /*<<< orphan*/  size; scalar_t__ virgl; int /*<<< orphan*/  dumb; } ;
struct virtio_gpu_object {int /*<<< orphan*/  tbo; int /*<<< orphan*/  gem_base; int /*<<< orphan*/  placement; int /*<<< orphan*/  dumb; int /*<<< orphan*/  hw_res_handle; } ;
struct virtio_gpu_fence_driver {int /*<<< orphan*/  lock; } ;
struct virtio_gpu_fence {int /*<<< orphan*/  f; } ;
struct TYPE_2__ {int /*<<< orphan*/  bdev; } ;
struct virtio_gpu_device {struct virtio_gpu_fence_driver fence_drv; TYPE_1__ mman; int /*<<< orphan*/  ddev; } ;
struct ttm_validate_buffer {int /*<<< orphan*/  head; int /*<<< orphan*/ * bo; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct virtio_gpu_object*) ; 
 struct virtio_gpu_object* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct ttm_validate_buffer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 size_t FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ttm_bo_type_device ; 
 int /*<<< orphan*/  FUNC12 (struct ww_acquire_ctx*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC13 (struct ww_acquire_ctx*,struct list_head*,int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct virtio_gpu_device*,struct virtio_gpu_object*,struct virtio_gpu_object_params*,struct virtio_gpu_fence*) ; 
 int /*<<< orphan*/  FUNC16 (struct virtio_gpu_device*,struct virtio_gpu_object*,struct virtio_gpu_object_params*,struct virtio_gpu_fence*) ; 
 int /*<<< orphan*/  FUNC17 (struct virtio_gpu_object*) ; 
 int FUNC18 (struct ww_acquire_ctx*,struct list_head*) ; 
 int FUNC19 (struct virtio_gpu_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct virtio_gpu_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  virtio_gpu_ttm_bo_destroy ; 
 int /*<<< orphan*/  FUNC21 (struct list_head*) ; 

int FUNC22(struct virtio_gpu_device *vgdev,
			     struct virtio_gpu_object_params *params,
			     struct virtio_gpu_object **bo_ptr,
			     struct virtio_gpu_fence *fence)
{
	struct virtio_gpu_object *bo;
	size_t acc_size;
	int ret;

	*bo_ptr = NULL;

	acc_size = FUNC10(&vgdev->mman.bdev, params->size,
				       sizeof(struct virtio_gpu_object));

	bo = FUNC4(sizeof(struct virtio_gpu_object), GFP_KERNEL);
	if (bo == NULL)
		return -ENOMEM;
	ret = FUNC19(vgdev, &bo->hw_res_handle);
	if (ret < 0) {
		FUNC3(bo);
		return ret;
	}
	params->size = FUNC7(params->size, PAGE_SIZE);
	ret = FUNC2(vgdev->ddev, &bo->gem_base, params->size);
	if (ret != 0) {
		FUNC20(vgdev, bo->hw_res_handle);
		FUNC3(bo);
		return ret;
	}
	bo->dumb = params->dumb;

	if (params->virgl) {
		FUNC16(vgdev, bo, params, fence);
	} else {
		FUNC15(vgdev, bo, params, fence);
	}

	FUNC17(bo);
	ret = FUNC11(&vgdev->mman.bdev, &bo->tbo, params->size,
			  ttm_bo_type_device, &bo->placement, 0,
			  true, acc_size, NULL, NULL,
			  &virtio_gpu_ttm_bo_destroy);
	/* ttm_bo_init failure will call the destroy */
	if (ret != 0)
		return ret;

	if (fence) {
		struct virtio_gpu_fence_driver *drv = &vgdev->fence_drv;
		struct list_head validate_list;
		struct ttm_validate_buffer mainbuf;
		struct ww_acquire_ctx ticket;
		unsigned long irq_flags;
		bool signaled;

		FUNC0(&validate_list);
		FUNC6(&mainbuf, 0, sizeof(struct ttm_validate_buffer));

		/* use a gem reference since unref list undoes them */
		FUNC1(&bo->gem_base);
		mainbuf.bo = &bo->tbo;
		FUNC5(&mainbuf.head, &validate_list);

		ret = FUNC18(&ticket, &validate_list);
		if (ret == 0) {
			FUNC8(&drv->lock, irq_flags);
			signaled = FUNC14(&fence->f);
			if (!signaled)
				/* virtio create command still in flight */
				FUNC13(&ticket, &validate_list,
							    &fence->f);
			FUNC9(&drv->lock, irq_flags);
			if (signaled)
				/* virtio create command finished */
				FUNC12(&ticket, &validate_list);
		}
		FUNC21(&validate_list);
	}

	*bo_ptr = bo;
	return 0;
}