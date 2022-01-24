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
struct drm_encoder {int dummy; } ;
struct vidi_context {int /*<<< orphan*/  crtc; struct exynos_drm_plane* planes; struct drm_device* drm_dev; struct drm_encoder encoder; } ;
struct exynos_drm_plane_config {unsigned int zpos; int /*<<< orphan*/  type; int /*<<< orphan*/  num_pixel_formats; int /*<<< orphan*/  pixel_formats; int /*<<< orphan*/  member_0; } ;
struct exynos_drm_plane {int /*<<< orphan*/  base; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t DEFAULT_WIN ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  DRM_MODE_ENCODER_TMDS ; 
 int /*<<< orphan*/  EXYNOS_DISPLAY_TYPE_VIDI ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int WINDOWS_NR ; 
 struct vidi_context* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_encoder*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*,struct drm_encoder*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct vidi_context*) ; 
 int FUNC9 (struct drm_encoder*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct drm_device*,struct exynos_drm_plane*,unsigned int,struct exynos_drm_plane_config*) ; 
 int /*<<< orphan*/  exynos_vidi_encoder_funcs ; 
 int /*<<< orphan*/  exynos_vidi_encoder_helper_funcs ; 
 int /*<<< orphan*/  formats ; 
 int FUNC11 (struct drm_encoder*) ; 
 int /*<<< orphan*/  vidi_crtc_ops ; 
 int /*<<< orphan*/ * vidi_win_types ; 

__attribute__((used)) static int FUNC12(struct device *dev, struct device *master, void *data)
{
	struct vidi_context *ctx = FUNC4(dev);
	struct drm_device *drm_dev = data;
	struct drm_encoder *encoder = &ctx->encoder;
	struct exynos_drm_plane *exynos_plane;
	struct exynos_drm_plane_config plane_config = { 0 };
	unsigned int i;
	int ret;

	ctx->drm_dev = drm_dev;

	plane_config.pixel_formats = formats;
	plane_config.num_pixel_formats = FUNC0(formats);

	for (i = 0; i < WINDOWS_NR; i++) {
		plane_config.zpos = i;
		plane_config.type = vidi_win_types[i];

		ret = FUNC10(drm_dev, &ctx->planes[i], i,
					&plane_config);
		if (ret)
			return ret;
	}

	exynos_plane = &ctx->planes[DEFAULT_WIN];
	ctx->crtc = FUNC8(drm_dev, &exynos_plane->base,
			EXYNOS_DISPLAY_TYPE_VIDI, &vidi_crtc_ops, ctx);
	if (FUNC2(ctx->crtc)) {
		FUNC1(dev, "failed to create crtc.\n");
		return FUNC3(ctx->crtc);
	}

	FUNC7(drm_dev, encoder, &exynos_vidi_encoder_funcs,
			 DRM_MODE_ENCODER_TMDS, NULL);

	FUNC6(encoder, &exynos_vidi_encoder_helper_funcs);

	ret = FUNC9(encoder, EXYNOS_DISPLAY_TYPE_VIDI);
	if (ret < 0)
		return ret;

	ret = FUNC11(encoder);
	if (ret) {
		FUNC1(dev, "failed to create connector ret = %d\n",
			      ret);
		FUNC5(encoder);
		return ret;
	}

	return 0;
}