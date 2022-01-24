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
typedef  int /*<<< orphan*/  uint64_t ;
struct msm_gem_object {int /*<<< orphan*/  lock; } ;
struct drm_gem_object {int /*<<< orphan*/  vma_node; struct drm_device* dev; } ;
struct drm_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct msm_gem_object* FUNC5 (struct drm_gem_object*) ; 

__attribute__((used)) static uint64_t FUNC6(struct drm_gem_object *obj)
{
	struct drm_device *dev = obj->dev;
	struct msm_gem_object *msm_obj = FUNC5(obj);
	int ret;

	FUNC1(!FUNC4(&msm_obj->lock));

	/* Make it mmapable */
	ret = FUNC2(obj);

	if (ret) {
		FUNC0(dev->dev, "could not allocate mmap offset\n");
		return 0;
	}

	return FUNC3(&obj->vma_node);
}