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
struct exynos_drm_crtc {TYPE_1__* ops; } ;
struct drm_display_mode {int dummy; } ;
struct drm_crtc {int dummy; } ;
typedef  enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;
struct TYPE_2__ {int (* mode_valid ) (struct exynos_drm_crtc*,struct drm_display_mode const*) ;} ;

/* Variables and functions */
 int MODE_OK ; 
 int FUNC0 (struct exynos_drm_crtc*,struct drm_display_mode const*) ; 
 struct exynos_drm_crtc* FUNC1 (struct drm_crtc*) ; 

__attribute__((used)) static enum drm_mode_status FUNC2(struct drm_crtc *crtc,
	const struct drm_display_mode *mode)
{
	struct exynos_drm_crtc *exynos_crtc = FUNC1(crtc);

	if (exynos_crtc->ops->mode_valid)
		return exynos_crtc->ops->mode_valid(exynos_crtc, mode);

	return MODE_OK;
}