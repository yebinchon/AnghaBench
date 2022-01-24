#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  normalized_zpos; int /*<<< orphan*/  zpos; struct drm_plane* plane; } ;
struct tegra_plane_state {TYPE_1__ base; } ;
struct tegra_plane {int /*<<< orphan*/  index; } ;
struct drm_plane {TYPE_1__* state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 struct tegra_plane_state* FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct tegra_plane* FUNC3 (struct drm_plane*) ; 

__attribute__((used)) static void FUNC4(struct drm_plane *plane)
{
	struct tegra_plane *p = FUNC3(plane);
	struct tegra_plane_state *state;

	if (plane->state)
		FUNC0(plane->state);

	FUNC1(plane->state);
	plane->state = NULL;

	state = FUNC2(sizeof(*state), GFP_KERNEL);
	if (state) {
		plane->state = &state->base;
		plane->state->plane = plane;
		plane->state->zpos = p->index;
		plane->state->normalized_zpos = p->index;
	}
}