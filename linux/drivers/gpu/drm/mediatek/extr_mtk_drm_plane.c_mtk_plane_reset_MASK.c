#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  format; } ;
struct TYPE_5__ {struct drm_plane* plane; } ;
struct mtk_plane_state {TYPE_1__ pending; TYPE_2__ base; } ;
struct drm_plane {TYPE_2__* state; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRM_FORMAT_RGB565 ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 struct mtk_plane_state* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_plane_state*,int /*<<< orphan*/ ,int) ; 
 struct mtk_plane_state* FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC4(struct drm_plane *plane)
{
	struct mtk_plane_state *state;

	if (plane->state) {
		FUNC0(plane->state);

		state = FUNC3(plane->state);
		FUNC2(state, 0, sizeof(*state));
	} else {
		state = FUNC1(sizeof(*state), GFP_KERNEL);
		if (!state)
			return;
		plane->state = &state->base;
	}

	state->base.plane = plane;
	state->pending.format = DRM_FORMAT_RGB565;
}