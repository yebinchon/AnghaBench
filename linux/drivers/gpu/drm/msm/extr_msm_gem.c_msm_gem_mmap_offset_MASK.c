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
struct drm_gem_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct msm_gem_object* FUNC3 (struct drm_gem_object*) ; 

uint64_t FUNC4(struct drm_gem_object *obj)
{
	uint64_t offset;
	struct msm_gem_object *msm_obj = FUNC3(obj);

	FUNC1(&msm_obj->lock);
	offset = FUNC0(obj);
	FUNC2(&msm_obj->lock);
	return offset;
}