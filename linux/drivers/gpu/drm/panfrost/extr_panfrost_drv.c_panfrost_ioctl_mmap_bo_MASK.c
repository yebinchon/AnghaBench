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
struct drm_panfrost_mmap_bo {scalar_t__ flags; int /*<<< orphan*/  offset; int /*<<< orphan*/  handle; } ;
struct drm_gem_object {int /*<<< orphan*/  vma_node; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ is_heap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int EINVAL ; 
 int ENOENT ; 
 int FUNC2 (struct drm_gem_object*) ; 
 struct drm_gem_object* FUNC3 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (struct drm_gem_object*) ; 

__attribute__((used)) static int FUNC7(struct drm_device *dev, void *data,
		      struct drm_file *file_priv)
{
	struct drm_panfrost_mmap_bo *args = data;
	struct drm_gem_object *gem_obj;
	int ret;

	if (args->flags != 0) {
		FUNC1("unknown mmap_bo flags: %d\n", args->flags);
		return -EINVAL;
	}

	gem_obj = FUNC3(file_priv, args->handle);
	if (!gem_obj) {
		FUNC0("Failed to look up GEM BO %d\n", args->handle);
		return -ENOENT;
	}

	/* Don't allow mmapping of heap objects as pages are not pinned. */
	if (FUNC6(gem_obj)->is_heap)
		return -EINVAL;

	ret = FUNC2(gem_obj);
	if (ret == 0)
		args->offset = FUNC5(&gem_obj->vma_node);
	FUNC4(gem_obj);

	return ret;
}