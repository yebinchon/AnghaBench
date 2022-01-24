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
struct drm_plane {TYPE_1__* state; } ;
struct TYPE_2__ {struct drm_plane* plane; } ;
struct dpu_plane_state {TYPE_1__ base; } ;
struct dpu_plane {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dpu_plane*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct dpu_plane*,char*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC3 (struct drm_plane*,TYPE_1__*) ; 
 struct dpu_plane_state* FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct dpu_plane* FUNC5 (struct drm_plane*) ; 

__attribute__((used)) static void FUNC6(struct drm_plane *plane)
{
	struct dpu_plane *pdpu;
	struct dpu_plane_state *pstate;

	if (!plane) {
		FUNC1("invalid plane\n");
		return;
	}

	pdpu = FUNC5(plane);
	FUNC0(pdpu, "\n");

	/* remove previous state, if present */
	if (plane->state) {
		FUNC3(plane, plane->state);
		plane->state = 0;
	}

	pstate = FUNC4(sizeof(*pstate), GFP_KERNEL);
	if (!pstate) {
		FUNC2(pdpu, "failed to allocate state\n");
		return;
	}

	pstate->base.plane = plane;

	plane->state = &pstate->base;
}