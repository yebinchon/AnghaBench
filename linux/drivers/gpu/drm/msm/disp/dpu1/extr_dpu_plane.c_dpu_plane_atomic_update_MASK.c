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
struct drm_plane_state {int /*<<< orphan*/  visible; } ;
struct drm_plane {struct drm_plane_state* state; } ;
struct dpu_plane {int is_error; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dpu_plane*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_plane*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_plane*) ; 
 struct dpu_plane* FUNC3 (struct drm_plane*) ; 

__attribute__((used)) static void FUNC4(struct drm_plane *plane,
				struct drm_plane_state *old_state)
{
	struct dpu_plane *pdpu = FUNC3(plane);
	struct drm_plane_state *state = plane->state;

	pdpu->is_error = false;

	FUNC0(pdpu, "\n");

	if (!state->visible) {
		FUNC1(plane);
	} else {
		FUNC2(plane);
	}
}