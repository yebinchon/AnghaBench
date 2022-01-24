#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int /*<<< orphan*/  resv; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct virtio_gpu_object {TYPE_2__ tbo; int /*<<< orphan*/  placement; } ;
struct virtio_gpu_fpriv {int /*<<< orphan*/  ctx_id; } ;
struct virtio_gpu_fence {int /*<<< orphan*/  f; } ;
struct virtio_gpu_device {int /*<<< orphan*/  has_virgl_3d; } ;
struct virtio_gpu_box {int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
struct ttm_operation_ctx {int member_0; int member_1; } ;
struct drm_virtgpu_3d_transfer_to_host {int /*<<< orphan*/  level; int /*<<< orphan*/  box; int /*<<< orphan*/  bo_handle; int /*<<< orphan*/  offset; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {struct virtio_gpu_fpriv* driver_priv; } ;
struct drm_device {struct virtio_gpu_device* dev_private; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct virtio_gpu_box*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct drm_gem_object* FUNC3 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_gem_object*) ; 
 struct virtio_gpu_object* FUNC5 (struct drm_gem_object*) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,struct ttm_operation_ctx*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct virtio_gpu_device*,struct virtio_gpu_object*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct virtio_gpu_device*,struct virtio_gpu_object*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct virtio_gpu_box*,struct virtio_gpu_fence*) ; 
 struct virtio_gpu_fence* FUNC10 (struct virtio_gpu_device*) ; 
 int FUNC11 (struct virtio_gpu_object*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct virtio_gpu_object*) ; 

__attribute__((used)) static int FUNC13(struct drm_device *dev, void *data,
					     struct drm_file *file)
{
	struct virtio_gpu_device *vgdev = dev->dev_private;
	struct virtio_gpu_fpriv *vfpriv = file->driver_priv;
	struct drm_virtgpu_3d_transfer_to_host *args = data;
	struct ttm_operation_ctx ctx = { true, false };
	struct drm_gem_object *gobj = NULL;
	struct virtio_gpu_object *qobj = NULL;
	struct virtio_gpu_fence *fence;
	struct virtio_gpu_box box;
	int ret;
	u32 offset = args->offset;

	gobj = FUNC3(file, args->bo_handle);
	if (gobj == NULL)
		return -ENOENT;

	qobj = FUNC5(gobj);

	ret = FUNC11(qobj, false);
	if (ret)
		goto out;

	ret = FUNC6(&qobj->tbo, &qobj->placement, &ctx);
	if (FUNC7(ret))
		goto out_unres;

	FUNC0(&box, &args->box);
	if (!vgdev->has_virgl_3d) {
		FUNC8
			(vgdev, qobj, offset,
			 box.w, box.h, box.x, box.y, NULL);
	} else {
		fence = FUNC10(vgdev);
		if (!fence) {
			ret = -ENOMEM;
			goto out_unres;
		}
		FUNC9
			(vgdev, qobj,
			 vfpriv ? vfpriv->ctx_id : 0, offset,
			 args->level, &box, fence);
		FUNC2(qobj->tbo.base.resv,
						  &fence->f);
		FUNC1(&fence->f);
	}

out_unres:
	FUNC12(qobj);
out:
	FUNC4(gobj);
	return ret;
}