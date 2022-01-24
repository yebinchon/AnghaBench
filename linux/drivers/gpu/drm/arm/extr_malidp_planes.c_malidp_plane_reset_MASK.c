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
struct malidp_plane_state {int /*<<< orphan*/  base; } ;
struct drm_plane {int /*<<< orphan*/ * state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_plane*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct malidp_plane_state*) ; 
 struct malidp_plane_state* FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct malidp_plane_state* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct drm_plane *plane)
{
	struct malidp_plane_state *state = FUNC4(plane->state);

	if (state)
		FUNC0(&state->base);
	FUNC2(state);
	plane->state = NULL;
	state = FUNC3(sizeof(*state), GFP_KERNEL);
	if (state)
		FUNC1(plane, &state->base);
}