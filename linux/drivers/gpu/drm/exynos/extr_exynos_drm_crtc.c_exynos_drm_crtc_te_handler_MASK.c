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
struct drm_crtc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* te_handler ) (struct exynos_drm_crtc*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct exynos_drm_crtc*) ; 
 struct exynos_drm_crtc* FUNC1 (struct drm_crtc*) ; 

void FUNC2(struct drm_crtc *crtc)
{
	struct exynos_drm_crtc *exynos_crtc = FUNC1(crtc);

	if (exynos_crtc->ops->te_handler)
		exynos_crtc->ops->te_handler(exynos_crtc);
}