#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  enable; } ;
struct fimd_context {TYPE_3__* crtc; scalar_t__ encoder; TYPE_2__ dp_clk; TYPE_1__* driver_data; struct exynos_drm_plane* planes; TYPE_4__* configs; struct drm_device* drm_dev; } ;
struct exynos_drm_plane {int /*<<< orphan*/  base; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_11__ {unsigned int zpos; int /*<<< orphan*/  capabilities; int /*<<< orphan*/  type; int /*<<< orphan*/  num_pixel_formats; int /*<<< orphan*/  pixel_formats; } ;
struct TYPE_10__ {TYPE_2__* pipe_clk; } ;
struct TYPE_8__ {scalar_t__ has_dp_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t DEFAULT_WIN ; 
 int /*<<< orphan*/  EXYNOS_DISPLAY_TYPE_LCD ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int FUNC2 (TYPE_3__*) ; 
 unsigned int WINDOWS_NR ; 
 int /*<<< orphan*/ * capabilities ; 
 struct fimd_context* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,scalar_t__) ; 
 TYPE_3__* FUNC5 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct fimd_context*) ; 
 int FUNC6 (struct drm_device*,struct device*) ; 
 int FUNC7 (struct drm_device*,struct exynos_drm_plane*,unsigned int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  fimd_crtc_ops ; 
 int /*<<< orphan*/  fimd_dp_clock_enable ; 
 int /*<<< orphan*/  fimd_formats ; 
 int /*<<< orphan*/ * fimd_win_types ; 
 scalar_t__ FUNC9 (struct drm_device*) ; 

__attribute__((used)) static int FUNC10(struct device *dev, struct device *master, void *data)
{
	struct fimd_context *ctx = FUNC3(dev);
	struct drm_device *drm_dev = data;
	struct exynos_drm_plane *exynos_plane;
	unsigned int i;
	int ret;

	ctx->drm_dev = drm_dev;

	for (i = 0; i < WINDOWS_NR; i++) {
		ctx->configs[i].pixel_formats = fimd_formats;
		ctx->configs[i].num_pixel_formats = FUNC0(fimd_formats);
		ctx->configs[i].zpos = i;
		ctx->configs[i].type = fimd_win_types[i];
		ctx->configs[i].capabilities = capabilities[i];
		ret = FUNC7(drm_dev, &ctx->planes[i], i,
					&ctx->configs[i]);
		if (ret)
			return ret;
	}

	exynos_plane = &ctx->planes[DEFAULT_WIN];
	ctx->crtc = FUNC5(drm_dev, &exynos_plane->base,
			EXYNOS_DISPLAY_TYPE_LCD, &fimd_crtc_ops, ctx);
	if (FUNC1(ctx->crtc))
		return FUNC2(ctx->crtc);

	if (ctx->driver_data->has_dp_clk) {
		ctx->dp_clk.enable = fimd_dp_clock_enable;
		ctx->crtc->pipe_clk = &ctx->dp_clk;
	}

	if (ctx->encoder)
		FUNC4(drm_dev, ctx->encoder);

	if (FUNC9(drm_dev))
		FUNC8(ctx->crtc);

	return FUNC6(drm_dev, dev);
}