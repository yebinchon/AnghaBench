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
struct exynos_drm_plane_state {struct drm_plane_state base; } ;
struct drm_plane {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct drm_plane*,struct drm_plane_state*) ; 
 struct exynos_drm_plane_state* FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct exynos_drm_plane_state* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct drm_plane_state *
FUNC3(struct drm_plane *plane)
{
	struct exynos_drm_plane_state *exynos_state;
	struct exynos_drm_plane_state *copy;

	exynos_state = FUNC2(plane->state);
	copy = FUNC1(sizeof(*exynos_state), GFP_KERNEL);
	if (!copy)
		return NULL;

	FUNC0(plane, &copy->base);
	return &copy->base;
}