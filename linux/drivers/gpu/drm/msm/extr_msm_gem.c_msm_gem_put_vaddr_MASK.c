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
struct msm_gem_object {int vmap_count; int /*<<< orphan*/  lock; } ;
struct drm_gem_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct msm_gem_object* FUNC3 (struct drm_gem_object*) ; 

void FUNC4(struct drm_gem_object *obj)
{
	struct msm_gem_object *msm_obj = FUNC3(obj);

	FUNC1(&msm_obj->lock);
	FUNC0(msm_obj->vmap_count < 1);
	msm_obj->vmap_count--;
	FUNC2(&msm_obj->lock);
}