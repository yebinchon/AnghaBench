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
struct TYPE_2__ {int /*<<< orphan*/  madv_list; } ;
struct panfrost_gem_object {TYPE_1__ base; } ;
struct panfrost_device {int /*<<< orphan*/  shrinker_lock; int /*<<< orphan*/  shrinker_list; } ;
struct drm_panfrost_madvise {scalar_t__ madv; scalar_t__ retained; int /*<<< orphan*/  handle; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {struct panfrost_device* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int ENOENT ; 
 scalar_t__ PANFROST_MADV_DONTNEED ; 
 scalar_t__ PANFROST_MADV_WILLNEED ; 
 struct drm_gem_object* FUNC1 (struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_object*) ; 
 scalar_t__ FUNC3 (struct drm_gem_object*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct panfrost_gem_object* FUNC8 (struct drm_gem_object*) ; 

__attribute__((used)) static int FUNC9(struct drm_device *dev, void *data,
				  struct drm_file *file_priv)
{
	struct drm_panfrost_madvise *args = data;
	struct panfrost_device *pfdev = dev->dev_private;
	struct drm_gem_object *gem_obj;

	gem_obj = FUNC1(file_priv, args->handle);
	if (!gem_obj) {
		FUNC0("Failed to look up GEM BO %d\n", args->handle);
		return -ENOENT;
	}

	args->retained = FUNC3(gem_obj, args->madv);

	if (args->retained) {
		struct panfrost_gem_object *bo = FUNC8(gem_obj);

		FUNC6(&pfdev->shrinker_lock);

		if (args->madv == PANFROST_MADV_DONTNEED)
			FUNC4(&bo->base.madv_list, &pfdev->shrinker_list);
		else if (args->madv == PANFROST_MADV_WILLNEED)
			FUNC5(&bo->base.madv_list);

		FUNC7(&pfdev->shrinker_lock);
	}

	FUNC2(gem_obj);
	return 0;
}