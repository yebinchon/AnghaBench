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
struct exynos_drm_plane {int dummy; } ;
struct exynos_drm_crtc {TYPE_1__* ops; } ;
struct drm_plane_state {int /*<<< orphan*/  crtc; } ;
struct drm_plane {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* disable_plane ) (struct exynos_drm_crtc*,struct exynos_drm_plane*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct exynos_drm_crtc*,struct exynos_drm_plane*) ; 
 struct exynos_drm_crtc* FUNC1 (int /*<<< orphan*/ ) ; 
 struct exynos_drm_plane* FUNC2 (struct drm_plane*) ; 

__attribute__((used)) static void FUNC3(struct drm_plane *plane,
					struct drm_plane_state *old_state)
{
	struct exynos_drm_plane *exynos_plane = FUNC2(plane);
	struct exynos_drm_crtc *exynos_crtc = FUNC1(old_state->crtc);

	if (!old_state->crtc)
		return;

	if (exynos_crtc->ops->disable_plane)
		exynos_crtc->ops->disable_plane(exynos_crtc, exynos_plane);
}