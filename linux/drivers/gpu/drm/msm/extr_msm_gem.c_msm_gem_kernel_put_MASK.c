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
struct msm_gem_address_space {int dummy; } ;
struct drm_gem_object {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_gem_object*,struct msm_gem_address_space*) ; 

void FUNC5(struct drm_gem_object *bo,
		struct msm_gem_address_space *aspace, bool locked)
{
	if (FUNC0(bo))
		return;

	FUNC3(bo);
	FUNC4(bo, aspace);

	if (locked)
		FUNC1(bo);
	else
		FUNC2(bo);
}