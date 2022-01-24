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
struct virtio_gpu_object {int /*<<< orphan*/  hw_res_handle; } ;
struct virtio_gpu_fpriv {int /*<<< orphan*/  ctx_id; } ;
struct virtio_gpu_device {int /*<<< orphan*/  has_virgl_3d; } ;
struct drm_gem_object {TYPE_1__* dev; } ;
struct drm_file {struct virtio_gpu_fpriv* driver_priv; } ;
struct TYPE_2__ {struct virtio_gpu_device* dev_private; } ;

/* Variables and functions */
 struct virtio_gpu_object* FUNC0 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC1 (struct virtio_gpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct virtio_gpu_object*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct virtio_gpu_object*) ; 

int FUNC4(struct drm_gem_object *obj,
			       struct drm_file *file)
{
	struct virtio_gpu_device *vgdev = obj->dev->dev_private;
	struct virtio_gpu_fpriv *vfpriv = file->driver_priv;
	struct virtio_gpu_object *qobj = FUNC0(obj);
	int r;

	if (!vgdev->has_virgl_3d)
		return 0;

	r = FUNC2(qobj, false);
	if (r)
		return r;

	FUNC1(vgdev, vfpriv->ctx_id,
					       qobj->hw_res_handle);
	FUNC3(qobj);
	return 0;
}