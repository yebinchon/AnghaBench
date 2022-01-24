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
struct drm_plane_state {int dummy; } ;
struct drm_plane {int /*<<< orphan*/  state; } ;
struct dpu_plane_state {int pending; struct drm_plane_state base; } ;
struct dpu_plane {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dpu_plane*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct dpu_plane*,char*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC3 (struct drm_plane*,struct drm_plane_state*) ; 
 struct dpu_plane_state* FUNC4 (struct dpu_plane_state*,int,int /*<<< orphan*/ ) ; 
 struct dpu_plane* FUNC5 (struct drm_plane*) ; 
 struct dpu_plane_state* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct drm_plane_state *
FUNC7(struct drm_plane *plane)
{
	struct dpu_plane *pdpu;
	struct dpu_plane_state *pstate;
	struct dpu_plane_state *old_state;

	if (!plane) {
		FUNC1("invalid plane\n");
		return NULL;
	} else if (!plane->state) {
		FUNC1("invalid plane state\n");
		return NULL;
	}

	old_state = FUNC6(plane->state);
	pdpu = FUNC5(plane);
	pstate = FUNC4(old_state, sizeof(*old_state), GFP_KERNEL);
	if (!pstate) {
		FUNC2(pdpu, "failed to allocate state\n");
		return NULL;
	}

	FUNC0(pdpu, "\n");

	pstate->pending = false;

	FUNC3(plane, &pstate->base);

	return &pstate->base;
}