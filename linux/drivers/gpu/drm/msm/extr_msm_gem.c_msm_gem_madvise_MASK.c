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
struct msm_gem_object {scalar_t__ madv; int /*<<< orphan*/  lock; } ;
struct drm_gem_object {TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  struct_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ __MSM_MADV_PURGED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct msm_gem_object* FUNC4 (struct drm_gem_object*) ; 

int FUNC5(struct drm_gem_object *obj, unsigned madv)
{
	struct msm_gem_object *msm_obj = FUNC4(obj);

	FUNC2(&msm_obj->lock);

	FUNC0(!FUNC1(&obj->dev->struct_mutex));

	if (msm_obj->madv != __MSM_MADV_PURGED)
		msm_obj->madv = madv;

	madv = msm_obj->madv;

	FUNC3(&msm_obj->lock);

	return (madv != __MSM_MADV_PURGED);
}