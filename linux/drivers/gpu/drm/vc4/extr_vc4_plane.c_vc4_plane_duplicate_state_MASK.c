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
struct vc4_plane_state {int dlist_count; int dlist_size; struct drm_plane_state base; void* dlist; scalar_t__ dlist_initialized; int /*<<< orphan*/  lbm; } ;
struct drm_plane {void* state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_plane*,struct drm_plane_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct vc4_plane_state*) ; 
 void* FUNC3 (void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct drm_plane_state *FUNC5(struct drm_plane *plane)
{
	struct vc4_plane_state *vc4_state;

	if (FUNC0(!plane->state))
		return NULL;

	vc4_state = FUNC3(plane->state, sizeof(*vc4_state), GFP_KERNEL);
	if (!vc4_state)
		return NULL;

	FUNC4(&vc4_state->lbm, 0, sizeof(vc4_state->lbm));
	vc4_state->dlist_initialized = 0;

	FUNC1(plane, &vc4_state->base);

	if (vc4_state->dlist) {
		vc4_state->dlist = FUNC3(vc4_state->dlist,
					   vc4_state->dlist_count * 4,
					   GFP_KERNEL);
		if (!vc4_state->dlist) {
			FUNC2(vc4_state);
			return NULL;
		}
		vc4_state->dlist_size = vc4_state->dlist_count;
	}

	return &vc4_state->base;
}