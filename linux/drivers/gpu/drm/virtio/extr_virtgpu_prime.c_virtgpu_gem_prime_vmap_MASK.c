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
struct virtio_gpu_object {void* vmap; } ;
struct drm_gem_object {int dummy; } ;

/* Variables and functions */
 struct virtio_gpu_object* FUNC0 (struct drm_gem_object*) ; 
 int FUNC1 (struct virtio_gpu_object*) ; 

void *FUNC2(struct drm_gem_object *obj)
{
	struct virtio_gpu_object *bo = FUNC0(obj);
	int ret;

	ret = FUNC1(bo);
	if (ret)
		return NULL;
	return bo->vmap;
}