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
struct drm_plane_state {TYPE_1__* fb; } ;
struct drm_plane {int dummy; } ;
struct amdgpu_bo {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct amdgpu_bo*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_bo*) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_bo**) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_bo*) ; 
 struct amdgpu_bo* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct drm_plane *plane,
				       struct drm_plane_state *old_state)
{
	struct amdgpu_bo *rbo;
	int r;

	if (!old_state->fb)
		return;

	rbo = FUNC5(old_state->fb->obj[0]);
	r = FUNC1(rbo, false);
	if (FUNC6(r)) {
		FUNC0("failed to reserve rbo before unpin\n");
		return;
	}

	FUNC2(rbo);
	FUNC4(rbo);
	FUNC3(&rbo);
}