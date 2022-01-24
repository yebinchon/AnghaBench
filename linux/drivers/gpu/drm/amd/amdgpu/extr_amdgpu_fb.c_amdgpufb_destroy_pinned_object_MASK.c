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
 int /*<<< orphan*/  FUNC0 (struct amdgpu_bo*) ; 
 int FUNC1 (struct amdgpu_bo*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_bo*) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_bo*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_gem_object*) ; 
 struct amdgpu_bo* FUNC5 (struct drm_gem_object*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct drm_gem_object *gobj)
{
	struct amdgpu_bo *abo = FUNC5(gobj);
	int ret;

	ret = FUNC1(abo, true);
	if (FUNC6(ret == 0)) {
		FUNC0(abo);
		FUNC2(abo);
		FUNC3(abo);
	}
	FUNC4(gobj);
}