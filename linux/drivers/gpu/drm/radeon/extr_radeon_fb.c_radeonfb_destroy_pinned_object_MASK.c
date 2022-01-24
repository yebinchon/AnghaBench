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
struct radeon_bo {int dummy; } ;
struct drm_gem_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_gem_object*) ; 
 struct radeon_bo* FUNC1 (struct drm_gem_object*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_bo*) ; 
 int FUNC4 (struct radeon_bo*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_bo*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_bo*) ; 

__attribute__((used)) static void FUNC7(struct drm_gem_object *gobj)
{
	struct radeon_bo *rbo = FUNC1(gobj);
	int ret;

	ret = FUNC4(rbo, false);
	if (FUNC2(ret == 0)) {
		FUNC3(rbo);
		FUNC5(rbo);
		FUNC6(rbo);
	}
	FUNC0(gobj);
}