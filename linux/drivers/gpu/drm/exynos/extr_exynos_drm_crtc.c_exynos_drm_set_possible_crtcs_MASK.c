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
struct exynos_drm_crtc {int /*<<< orphan*/  base; } ;
struct drm_encoder {int /*<<< orphan*/  possible_crtcs; int /*<<< orphan*/  dev; } ;
typedef  enum exynos_drm_output_type { ____Placeholder_exynos_drm_output_type } exynos_drm_output_type ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct exynos_drm_crtc*) ; 
 int FUNC1 (struct exynos_drm_crtc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct exynos_drm_crtc* FUNC3 (int /*<<< orphan*/ ,int) ; 

int FUNC4(struct drm_encoder *encoder,
		enum exynos_drm_output_type out_type)
{
	struct exynos_drm_crtc *crtc = FUNC3(encoder->dev,
						out_type);

	if (FUNC0(crtc))
		return FUNC1(crtc);

	encoder->possible_crtcs = FUNC2(&crtc->base);

	return 0;
}