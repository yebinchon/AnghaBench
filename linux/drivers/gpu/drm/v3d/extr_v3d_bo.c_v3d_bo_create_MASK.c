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
struct v3d_bo {int dummy; } ;
struct drm_gem_shmem_object {int /*<<< orphan*/  base; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 struct v3d_bo* FUNC0 (struct drm_gem_shmem_object*) ; 
 struct v3d_bo* FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct drm_gem_shmem_object*) ; 
 struct drm_gem_shmem_object* FUNC3 (struct drm_device*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct v3d_bo* FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

struct v3d_bo *FUNC7(struct drm_device *dev, struct drm_file *file_priv,
			     size_t unaligned_size)
{
	struct drm_gem_shmem_object *shmem_obj;
	struct v3d_bo *bo;
	int ret;

	shmem_obj = FUNC3(dev, unaligned_size);
	if (FUNC2(shmem_obj))
		return FUNC0(shmem_obj);
	bo = FUNC5(&shmem_obj->base);

	ret = FUNC6(&shmem_obj->base);
	if (ret)
		goto free_obj;

	return bo;

free_obj:
	FUNC4(&shmem_obj->base);
	return FUNC1(ret);
}