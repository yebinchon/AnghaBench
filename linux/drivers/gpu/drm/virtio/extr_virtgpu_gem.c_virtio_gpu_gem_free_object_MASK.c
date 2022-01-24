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
struct drm_gem_object {int dummy; } ;

/* Variables and functions */
 struct virtio_gpu_object* FUNC0 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC1 (struct virtio_gpu_object**) ; 

void FUNC2(struct drm_gem_object *gem_obj)
{
	struct virtio_gpu_object *obj = FUNC0(gem_obj);

	if (obj)
		FUNC1(&obj);
}