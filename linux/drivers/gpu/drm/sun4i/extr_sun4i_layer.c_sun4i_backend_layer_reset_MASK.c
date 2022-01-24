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
struct sun4i_layer_state {int /*<<< orphan*/  state; } ;
struct sun4i_layer {int /*<<< orphan*/  id; } ;
struct drm_plane {TYPE_1__* state; } ;
struct TYPE_2__ {int /*<<< orphan*/  zpos; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_plane*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sun4i_layer_state*) ; 
 struct sun4i_layer_state* FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct sun4i_layer* FUNC4 (struct drm_plane*) ; 
 struct sun4i_layer_state* FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC6(struct drm_plane *plane)
{
	struct sun4i_layer *layer = FUNC4(plane);
	struct sun4i_layer_state *state;

	if (plane->state) {
		state = FUNC5(plane->state);

		FUNC0(&state->state);

		FUNC2(state);
		plane->state = NULL;
	}

	state = FUNC3(sizeof(*state), GFP_KERNEL);
	if (state) {
		FUNC1(plane, &state->state);
		plane->state->zpos = layer->id;
	}
}