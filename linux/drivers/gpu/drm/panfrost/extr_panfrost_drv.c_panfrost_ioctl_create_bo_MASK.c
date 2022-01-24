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
struct drm_panfrost_create_bo {int flags; int offset; int /*<<< orphan*/  handle; int /*<<< orphan*/  size; scalar_t__ pad; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct panfrost_gem_object*) ; 
 int PAGE_SHIFT ; 
 int PANFROST_BO_HEAP ; 
 int PANFROST_BO_NOEXEC ; 
 int FUNC1 (struct panfrost_gem_object*) ; 
 struct panfrost_gem_object* FUNC2 (struct drm_file*,struct drm_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct drm_device *dev, void *data,
		struct drm_file *file)
{
	struct panfrost_gem_object *bo;
	struct drm_panfrost_create_bo *args = data;

	if (!args->size || args->pad ||
	    (args->flags & ~(PANFROST_BO_NOEXEC | PANFROST_BO_HEAP)))
		return -EINVAL;

	/* Heaps should never be executable */
	if ((args->flags & PANFROST_BO_HEAP) &&
	    !(args->flags & PANFROST_BO_NOEXEC))
		return -EINVAL;

	bo = FUNC2(file, dev, args->size, args->flags,
					     &args->handle);
	if (FUNC0(bo))
		return FUNC1(bo);

	args->offset = bo->node.start << PAGE_SHIFT;

	return 0;
}