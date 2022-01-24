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
struct drm_plane_state {struct drm_plane* plane; } ;
struct mtk_plane_state {struct drm_plane_state base; int /*<<< orphan*/  pending; } ;
struct drm_plane {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_plane*,struct drm_plane_state*) ; 
 struct mtk_plane_state* FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct mtk_plane_state* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct drm_plane_state *FUNC4(struct drm_plane *plane)
{
	struct mtk_plane_state *old_state = FUNC3(plane->state);
	struct mtk_plane_state *state;

	state = FUNC2(sizeof(*state), GFP_KERNEL);
	if (!state)
		return NULL;

	FUNC1(plane, &state->base);

	FUNC0(state->base.plane != plane);

	state->pending = old_state->pending;

	return &state->base;
}