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
typedef  int /*<<< orphan*/  u32 ;
struct virtio_gpu_object_params {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct virtio_gpu_object {struct drm_gem_object gem_base; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct virtio_gpu_object*) ; 
 int FUNC1 (struct virtio_gpu_object*) ; 
 int FUNC2 (struct drm_file*,struct drm_gem_object*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_gem_object*) ; 
 struct virtio_gpu_object* FUNC5 (struct drm_device*,struct virtio_gpu_object_params*,int /*<<< orphan*/ *) ; 

int FUNC6(struct drm_file *file,
			  struct drm_device *dev,
			  struct virtio_gpu_object_params *params,
			  struct drm_gem_object **obj_p,
			  uint32_t *handle_p)
{
	struct virtio_gpu_object *obj;
	int ret;
	u32 handle;

	obj = FUNC5(dev, params, NULL);
	if (FUNC0(obj))
		return FUNC1(obj);

	ret = FUNC2(file, &obj->gem_base, &handle);
	if (ret) {
		FUNC4(&obj->gem_base);
		return ret;
	}

	*obj_p = &obj->gem_base;

	/* drop reference from allocate - handle holds it now */
	FUNC3(&obj->gem_base);

	*handle_p = handle;
	return 0;
}