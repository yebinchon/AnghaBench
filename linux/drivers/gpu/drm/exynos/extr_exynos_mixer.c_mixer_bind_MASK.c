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
struct mixer_context {int /*<<< orphan*/  crtc; struct exynos_drm_plane* planes; int /*<<< orphan*/  flags; } ;
struct exynos_drm_plane {int /*<<< orphan*/  base; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 size_t DEFAULT_WIN ; 
 int /*<<< orphan*/  EXYNOS_DISPLAY_TYPE_HDMI ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int MIXER_WIN_NR ; 
 int /*<<< orphan*/  MXR_BIT_VP_ENABLED ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int VP_DEFAULT_WIN ; 
 struct mixer_context* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct mixer_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mixer_context*) ; 
 int FUNC5 (struct drm_device*,struct exynos_drm_plane*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mixer_crtc_ops ; 
 int /*<<< orphan*/  FUNC6 (struct mixer_context*) ; 
 int FUNC7 (struct mixer_context*,struct drm_device*) ; 
 int /*<<< orphan*/ * plane_configs ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct device *dev, struct device *manager, void *data)
{
	struct mixer_context *ctx = FUNC2(dev);
	struct drm_device *drm_dev = data;
	struct exynos_drm_plane *exynos_plane;
	unsigned int i;
	int ret;

	ret = FUNC7(ctx, drm_dev);
	if (ret)
		return ret;

	for (i = 0; i < MIXER_WIN_NR; i++) {
		if (i == VP_DEFAULT_WIN && !FUNC8(MXR_BIT_VP_ENABLED,
						     &ctx->flags))
			continue;

		ret = FUNC5(drm_dev, &ctx->planes[i], i,
					&plane_configs[i]);
		if (ret)
			return ret;
	}

	exynos_plane = &ctx->planes[DEFAULT_WIN];
	ctx->crtc = FUNC4(drm_dev, &exynos_plane->base,
			EXYNOS_DISPLAY_TYPE_HDMI, &mixer_crtc_ops, ctx);
	if (FUNC0(ctx->crtc)) {
		FUNC6(ctx);
		ret = FUNC1(ctx->crtc);
		goto free_ctx;
	}

	return 0;

free_ctx:
	FUNC3(dev, ctx);
	return ret;
}