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
struct drm_plane {TYPE_1__* dev; int /*<<< orphan*/ * state; } ;
struct TYPE_4__ {scalar_t__ fb; } ;
struct atmel_hlcdc_plane_state {TYPE_2__ base; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct drm_plane*,TYPE_2__*) ; 
 scalar_t__ FUNC1 (struct drm_plane*,struct atmel_hlcdc_plane_state*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct atmel_hlcdc_plane_state* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct atmel_hlcdc_plane_state*) ; 
 struct atmel_hlcdc_plane_state* FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct drm_plane *p)
{
	struct atmel_hlcdc_plane_state *state;

	if (p->state) {
		state = FUNC4(p->state);

		if (state->base.fb)
			FUNC3(state->base.fb);

		FUNC5(state);
		p->state = NULL;
	}

	state = FUNC6(sizeof(*state), GFP_KERNEL);
	if (state) {
		if (FUNC1(p, state)) {
			FUNC5(state);
			FUNC2(p->dev->dev,
				"Failed to allocate initial plane state\n");
			return;
		}
		FUNC0(p, &state->base);
	}
}