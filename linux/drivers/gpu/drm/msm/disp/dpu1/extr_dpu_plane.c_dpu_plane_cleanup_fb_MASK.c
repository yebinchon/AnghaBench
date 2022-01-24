#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct drm_plane_state {TYPE_2__* fb; } ;
struct drm_plane {int dummy; } ;
struct dpu_plane_state {int /*<<< orphan*/  aspace; } ;
struct dpu_plane {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  id; } ;
struct TYPE_4__ {TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dpu_plane*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 struct dpu_plane* FUNC2 (struct drm_plane*) ; 
 struct dpu_plane_state* FUNC3 (struct drm_plane_state*) ; 

__attribute__((used)) static void FUNC4(struct drm_plane *plane,
		struct drm_plane_state *old_state)
{
	struct dpu_plane *pdpu = FUNC2(plane);
	struct dpu_plane_state *old_pstate;

	if (!old_state || !old_state->fb)
		return;

	old_pstate = FUNC3(old_state);

	FUNC0(pdpu, "FB[%u]\n", old_state->fb->base.id);

	FUNC1(old_state->fb, old_pstate->aspace);
}