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
struct page {int dummy; } ;
struct msm_gem_object {scalar_t__ madv; int /*<<< orphan*/  lock; } ;
struct drm_gem_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 struct page** FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MSM_MADV_WILLNEED ; 
 scalar_t__ FUNC1 (int) ; 
 struct page** FUNC2 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct msm_gem_object* FUNC5 (struct drm_gem_object*) ; 

struct page **FUNC6(struct drm_gem_object *obj)
{
	struct msm_gem_object *msm_obj = FUNC5(obj);
	struct page **p;

	FUNC3(&msm_obj->lock);

	if (FUNC1(msm_obj->madv != MSM_MADV_WILLNEED)) {
		FUNC4(&msm_obj->lock);
		return FUNC0(-EBUSY);
	}

	p = FUNC2(obj);
	FUNC4(&msm_obj->lock);
	return p;
}