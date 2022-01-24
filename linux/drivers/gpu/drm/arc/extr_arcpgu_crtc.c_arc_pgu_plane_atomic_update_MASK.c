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
struct drm_plane_state {int dummy; } ;
struct drm_plane {TYPE_1__* state; } ;
struct drm_gem_cma_object {int /*<<< orphan*/  paddr; } ;
struct arcpgu_drm_private {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  fb; int /*<<< orphan*/  crtc; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARCPGU_REG_BUF0_ADDR ; 
 int /*<<< orphan*/  FUNC0 (struct arcpgu_drm_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct arcpgu_drm_private* FUNC1 (int /*<<< orphan*/ ) ; 
 struct drm_gem_cma_object* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct drm_plane *plane,
					struct drm_plane_state *state)
{
	struct arcpgu_drm_private *arcpgu;
	struct drm_gem_cma_object *gem;

	if (!plane->state->crtc || !plane->state->fb)
		return;

	arcpgu = FUNC1(plane->state->crtc);
	gem = FUNC2(plane->state->fb, 0);
	FUNC0(arcpgu, ARCPGU_REG_BUF0_ADDR, gem->paddr);
}