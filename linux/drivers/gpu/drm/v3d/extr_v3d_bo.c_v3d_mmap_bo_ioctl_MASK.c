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
struct drm_v3d_mmap_bo {scalar_t__ flags; int /*<<< orphan*/  offset; int /*<<< orphan*/  handle; } ;
struct drm_gem_object {int /*<<< orphan*/  vma_node; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int EINVAL ; 
 int ENOENT ; 
 struct drm_gem_object* FUNC2 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct drm_device *dev, void *data,
		      struct drm_file *file_priv)
{
	struct drm_v3d_mmap_bo *args = data;
	struct drm_gem_object *gem_obj;

	if (args->flags != 0) {
		FUNC1("unknown mmap_bo flags: %d\n", args->flags);
		return -EINVAL;
	}

	gem_obj = FUNC2(file_priv, args->handle);
	if (!gem_obj) {
		FUNC0("Failed to look up GEM BO %d\n", args->handle);
		return -ENOENT;
	}

	args->offset = FUNC4(&gem_obj->vma_node);
	FUNC3(gem_obj);

	return 0;
}