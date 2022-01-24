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
typedef  int /*<<< orphan*/  uint32_t ;
struct virtio_gpu_object_params {scalar_t__ size; int virgl; int target; int depth; int array_size; int last_level; int nr_samples; int /*<<< orphan*/  flags; int /*<<< orphan*/  bind; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  format; int /*<<< orphan*/  member_0; } ;
struct drm_gem_object {int dummy; } ;
struct virtio_gpu_object {int /*<<< orphan*/  hw_res_handle; struct drm_gem_object gem_base; } ;
struct virtio_gpu_fence {int /*<<< orphan*/  f; } ;
struct virtio_gpu_device {int has_virgl_3d; } ;
struct drm_virtgpu_resource_create {int depth; int nr_samples; int last_level; int target; int array_size; scalar_t__ size; int /*<<< orphan*/  bo_handle; int /*<<< orphan*/  res_handle; int /*<<< orphan*/  flags; int /*<<< orphan*/  bind; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  format; } ;
struct drm_file {int dummy; } ;
struct drm_device {struct virtio_gpu_device* dev_private; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct virtio_gpu_object*) ; 
 scalar_t__ PAGE_SIZE ; 
 int FUNC1 (struct virtio_gpu_object*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct drm_file*,struct drm_gem_object*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_gem_object*) ; 
 struct virtio_gpu_object* FUNC6 (struct drm_device*,struct virtio_gpu_object_params*,struct virtio_gpu_fence*) ; 
 struct virtio_gpu_fence* FUNC7 (struct virtio_gpu_device*) ; 

__attribute__((used)) static int FUNC8(struct drm_device *dev, void *data,
					    struct drm_file *file_priv)
{
	struct virtio_gpu_device *vgdev = dev->dev_private;
	struct drm_virtgpu_resource_create *rc = data;
	struct virtio_gpu_fence *fence;
	int ret;
	struct virtio_gpu_object *qobj;
	struct drm_gem_object *obj;
	uint32_t handle = 0;
	struct virtio_gpu_object_params params = { 0 };

	if (vgdev->has_virgl_3d == false) {
		if (rc->depth > 1)
			return -EINVAL;
		if (rc->nr_samples > 1)
			return -EINVAL;
		if (rc->last_level > 1)
			return -EINVAL;
		if (rc->target != 2)
			return -EINVAL;
		if (rc->array_size > 1)
			return -EINVAL;
	}

	params.format = rc->format;
	params.width = rc->width;
	params.height = rc->height;
	params.size = rc->size;
	if (vgdev->has_virgl_3d) {
		params.virgl = true;
		params.target = rc->target;
		params.bind = rc->bind;
		params.depth = rc->depth;
		params.array_size = rc->array_size;
		params.last_level = rc->last_level;
		params.nr_samples = rc->nr_samples;
		params.flags = rc->flags;
	}
	/* allocate a single page size object */
	if (params.size == 0)
		params.size = PAGE_SIZE;

	fence = FUNC7(vgdev);
	if (!fence)
		return -ENOMEM;
	qobj = FUNC6(dev, &params, fence);
	FUNC2(&fence->f);
	if (FUNC0(qobj))
		return FUNC1(qobj);
	obj = &qobj->gem_base;

	ret = FUNC3(file_priv, obj, &handle);
	if (ret) {
		FUNC5(obj);
		return ret;
	}
	FUNC4(obj);

	rc->res_handle = qobj->hw_res_handle; /* similiar to a VM address */
	rc->bo_handle = handle;
	return 0;
}