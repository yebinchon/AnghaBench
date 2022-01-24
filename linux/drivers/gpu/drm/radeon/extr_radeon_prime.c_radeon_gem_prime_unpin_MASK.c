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
struct radeon_bo {scalar_t__ prime_shared_count; } ;
struct drm_gem_object {int dummy; } ;

/* Variables and functions */
 struct radeon_bo* FUNC0 (struct drm_gem_object*) ; 
 int FUNC1 (struct radeon_bo*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_bo*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_bo*) ; 
 scalar_t__ FUNC4 (int) ; 

void FUNC5(struct drm_gem_object *obj)
{
	struct radeon_bo *bo = FUNC0(obj);
	int ret = 0;

	ret = FUNC1(bo, false);
	if (FUNC4(ret != 0))
		return;

	FUNC2(bo);
	if (bo->prime_shared_count)
		bo->prime_shared_count--;
	FUNC3(bo);
}