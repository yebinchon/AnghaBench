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
 struct radeon_bo* FUNC0 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_bo**) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_bo*) ; 

void FUNC3(struct drm_gem_object *gobj)
{
	struct radeon_bo *robj = FUNC0(gobj);

	if (robj) {
		FUNC2(robj);
		FUNC1(&robj);
	}
}