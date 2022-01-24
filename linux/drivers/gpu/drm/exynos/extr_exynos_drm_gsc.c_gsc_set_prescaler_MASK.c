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
typedef  int u32 ;
struct gsc_scaler {int main_hratio; int main_vratio; int /*<<< orphan*/  pre_vratio; int /*<<< orphan*/  pre_hratio; int /*<<< orphan*/  pre_shfactor; } ;
struct gsc_context {int /*<<< orphan*/  dev; scalar_t__ rotation; } ;
struct drm_exynos_ipp_task_rect {int w; int h; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GSC_PRE_SCALE_RATIO ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct gsc_context*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct gsc_context *ctx, struct gsc_scaler *sc,
			     struct drm_exynos_ipp_task_rect *src,
			     struct drm_exynos_ipp_task_rect *dst)
{
	u32 cfg;
	u32 src_w, src_h, dst_w, dst_h;
	int ret = 0;

	src_w = src->w;
	src_h = src->h;

	if (ctx->rotation) {
		dst_w = dst->h;
		dst_h = dst->w;
	} else {
		dst_w = dst->w;
		dst_h = dst->h;
	}

	ret = FUNC6(ctx, src_w, dst_w, &sc->pre_hratio);
	if (ret) {
		FUNC1(ctx->dev, "failed to get ratio horizontal.\n");
		return ret;
	}

	ret = FUNC6(ctx, src_h, dst_h, &sc->pre_vratio);
	if (ret) {
		FUNC1(ctx->dev, "failed to get ratio vertical.\n");
		return ret;
	}

	FUNC0(ctx->dev, "pre_hratio[%d]pre_vratio[%d]\n",
			  sc->pre_hratio, sc->pre_vratio);

	sc->main_hratio = (src_w << 16) / dst_w;
	sc->main_vratio = (src_h << 16) / dst_h;

	FUNC0(ctx->dev, "main_hratio[%ld]main_vratio[%ld]\n",
			  sc->main_hratio, sc->main_vratio);

	FUNC5(sc->pre_hratio, sc->pre_vratio,
		&sc->pre_shfactor);

	FUNC0(ctx->dev, "pre_shfactor[%d]\n", sc->pre_shfactor);

	cfg = (FUNC3(sc->pre_shfactor) |
		FUNC2(sc->pre_hratio) |
		FUNC4(sc->pre_vratio));
	FUNC7(cfg, GSC_PRE_SCALE_RATIO);

	return ret;
}