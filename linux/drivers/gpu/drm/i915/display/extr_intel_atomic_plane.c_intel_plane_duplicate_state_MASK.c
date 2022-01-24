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
struct intel_plane_state {scalar_t__ flags; int /*<<< orphan*/ * vma; struct drm_plane_state base; } ;
struct drm_plane {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct drm_plane*,struct drm_plane_state*) ; 
 struct intel_plane_state* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

struct drm_plane_state *
FUNC2(struct drm_plane *plane)
{
	struct drm_plane_state *state;
	struct intel_plane_state *intel_state;

	intel_state = FUNC1(plane->state, sizeof(*intel_state), GFP_KERNEL);

	if (!intel_state)
		return NULL;

	state = &intel_state->base;

	FUNC0(plane, state);

	intel_state->vma = NULL;
	intel_state->flags = 0;

	return state;
}