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
struct msm_gem_object {int /*<<< orphan*/ * vaddr; int /*<<< orphan*/  lock; } ;
struct drm_gem_object {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct msm_gem_object*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct msm_gem_object* FUNC3 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct drm_gem_object *obj)
{
	struct msm_gem_object *msm_obj = FUNC3(obj);

	FUNC0(!FUNC2(&msm_obj->lock));

	if (!msm_obj->vaddr || FUNC0(!FUNC1(msm_obj)))
		return;

	FUNC4(msm_obj->vaddr);
	msm_obj->vaddr = NULL;
}