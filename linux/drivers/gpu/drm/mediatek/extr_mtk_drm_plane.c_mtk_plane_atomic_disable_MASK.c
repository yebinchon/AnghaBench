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
struct TYPE_2__ {int enable; int dirty; } ;
struct mtk_plane_state {TYPE_1__ pending; } ;
struct drm_plane_state {int dummy; } ;
struct drm_plane {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 struct mtk_plane_state* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void FUNC2(struct drm_plane *plane,
				     struct drm_plane_state *old_state)
{
	struct mtk_plane_state *state = FUNC0(plane->state);

	state->pending.enable = false;
	FUNC1(); /* Make sure the above parameter is set before update */
	state->pending.dirty = true;
}