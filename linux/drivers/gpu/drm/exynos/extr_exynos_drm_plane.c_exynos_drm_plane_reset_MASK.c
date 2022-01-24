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
struct exynos_drm_plane_state {int /*<<< orphan*/  base; } ;
struct exynos_drm_plane {TYPE_1__* config; } ;
struct drm_plane {TYPE_2__* state; } ;
struct TYPE_5__ {int /*<<< orphan*/  zpos; } ;
struct TYPE_4__ {int /*<<< orphan*/  zpos; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_plane*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct exynos_drm_plane_state*) ; 
 struct exynos_drm_plane_state* FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct exynos_drm_plane* FUNC4 (struct drm_plane*) ; 
 struct exynos_drm_plane_state* FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC6(struct drm_plane *plane)
{
	struct exynos_drm_plane *exynos_plane = FUNC4(plane);
	struct exynos_drm_plane_state *exynos_state;

	if (plane->state) {
		exynos_state = FUNC5(plane->state);
		FUNC0(plane->state);
		FUNC2(exynos_state);
		plane->state = NULL;
	}

	exynos_state = FUNC3(sizeof(*exynos_state), GFP_KERNEL);
	if (exynos_state) {
		FUNC1(plane, &exynos_state->base);
		plane->state->zpos = exynos_plane->config->zpos;
	}
}