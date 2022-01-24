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
struct virtio_gpu_object {int dummy; } ;
struct drm_virtgpu_3d_wait {int flags; int /*<<< orphan*/  handle; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int VIRTGPU_WAIT_NOWAIT ; 
 struct drm_gem_object* FUNC0 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_gem_object*) ; 
 struct virtio_gpu_object* FUNC2 (struct drm_gem_object*) ; 
 int FUNC3 (struct virtio_gpu_object*,int) ; 

__attribute__((used)) static int FUNC4(struct drm_device *dev, void *data,
			    struct drm_file *file)
{
	struct drm_virtgpu_3d_wait *args = data;
	struct drm_gem_object *gobj = NULL;
	struct virtio_gpu_object *qobj = NULL;
	int ret;
	bool nowait = false;

	gobj = FUNC0(file, args->handle);
	if (gobj == NULL)
		return -ENOENT;

	qobj = FUNC2(gobj);

	if (args->flags & VIRTGPU_WAIT_NOWAIT)
		nowait = true;
	ret = FUNC3(qobj, nowait);

	FUNC1(gobj);
	return ret;
}