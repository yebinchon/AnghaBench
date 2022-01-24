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
struct drm_gem_object {int dummy; } ;
struct amdgpu_bo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amdgpu_bo**) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_bo*) ; 
 struct amdgpu_bo* FUNC2 (struct drm_gem_object*) ; 

void FUNC3(struct drm_gem_object *gobj)
{
	struct amdgpu_bo *robj = FUNC2(gobj);

	if (robj) {
		FUNC1(robj);
		FUNC0(&robj);
	}
}