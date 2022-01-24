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
struct TYPE_2__ {int start; } ;
struct panfrost_gem_object {TYPE_1__ node; } ;
struct drm_panfrost_get_bo_offset {int offset; int /*<<< orphan*/  handle; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int ENOENT ; 
 int PAGE_SHIFT ; 
 struct drm_gem_object* FUNC1 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_object*) ; 
 struct panfrost_gem_object* FUNC3 (struct drm_gem_object*) ; 

__attribute__((used)) static int FUNC4(struct drm_device *dev, void *data,
			    struct drm_file *file_priv)
{
	struct drm_panfrost_get_bo_offset *args = data;
	struct drm_gem_object *gem_obj;
	struct panfrost_gem_object *bo;

	gem_obj = FUNC1(file_priv, args->handle);
	if (!gem_obj) {
		FUNC0("Failed to look up GEM BO %d\n", args->handle);
		return -ENOENT;
	}
	bo = FUNC3(gem_obj);

	args->offset = bo->node.start << PAGE_SHIFT;

	FUNC2(gem_obj);
	return 0;
}