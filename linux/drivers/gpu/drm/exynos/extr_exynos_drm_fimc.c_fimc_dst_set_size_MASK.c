#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct fimc_context {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int w; int h; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_5__ {unsigned int* pitch; scalar_t__ width; int /*<<< orphan*/  height; } ;
struct exynos_drm_ipp_buffer {TYPE_3__ rect; TYPE_2__ buf; TYPE_1__* format; } ;
struct TYPE_4__ {unsigned int* cpp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  EXYNOS_CIGCTRL ; 
 int EXYNOS_CIGCTRL_CSC_ITU601 ; 
 int EXYNOS_CIGCTRL_CSC_ITU709 ; 
 int EXYNOS_CIGCTRL_CSC_MASK ; 
 int /*<<< orphan*/  EXYNOS_CIOCBOFF ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXYNOS_CIOCROFF ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXYNOS_CIOYOFF ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXYNOS_CITAREA ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  EXYNOS_CITRGFMT ; 
 int EXYNOS_CITRGFMT_OUTROT90_CLOCKWISE ; 
 int FUNC8 (int) ; 
 int EXYNOS_CITRGFMT_TARGETH_MASK ; 
 int FUNC9 (int) ; 
 int EXYNOS_CITRGFMT_TARGETV_MASK ; 
 int /*<<< orphan*/  EXYNOS_ORGOSIZE ; 
 int FUNC10 (unsigned int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FIMC_WIDTH_ITU_709 ; 
 int FUNC12 (struct fimc_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct fimc_context*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct fimc_context *ctx,
			     struct exynos_drm_ipp_buffer *buf)
{
	unsigned int real_width = buf->buf.pitch[0] / buf->format->cpp[0];
	u32 cfg, cfg_ext;

	FUNC0(ctx->dev, "hsize[%d]vsize[%d]\n", real_width,
			  buf->buf.height);

	/* original size */
	cfg = (FUNC10(real_width) |
		FUNC11(buf->buf.height));

	FUNC13(ctx, cfg, EXYNOS_ORGOSIZE);

	FUNC0(ctx->dev, "x[%d]y[%d]w[%d]h[%d]\n", buf->rect.x,
			  buf->rect.y,
			  buf->rect.w, buf->rect.h);

	/* CSC ITU */
	cfg = FUNC12(ctx, EXYNOS_CIGCTRL);
	cfg &= ~EXYNOS_CIGCTRL_CSC_MASK;

	if (buf->buf.width >= FIMC_WIDTH_ITU_709)
		cfg |= EXYNOS_CIGCTRL_CSC_ITU709;
	else
		cfg |= EXYNOS_CIGCTRL_CSC_ITU601;

	FUNC13(ctx, cfg, EXYNOS_CIGCTRL);

	cfg_ext = FUNC12(ctx, EXYNOS_CITRGFMT);

	/* target image size */
	cfg = FUNC12(ctx, EXYNOS_CITRGFMT);
	cfg &= ~(EXYNOS_CITRGFMT_TARGETH_MASK |
		EXYNOS_CITRGFMT_TARGETV_MASK);
	if (cfg_ext & EXYNOS_CITRGFMT_OUTROT90_CLOCKWISE)
		cfg |= (FUNC8(buf->rect.h) |
			FUNC9(buf->rect.w));
	else
		cfg |= (FUNC8(buf->rect.w) |
			FUNC9(buf->rect.h));
	FUNC13(ctx, cfg, EXYNOS_CITRGFMT);

	/* target area */
	cfg = FUNC7(buf->rect.w * buf->rect.h);
	FUNC13(ctx, cfg, EXYNOS_CITAREA);

	/* offset Y(RGB), Cb, Cr */
	cfg = (FUNC5(buf->rect.x) |
		FUNC6(buf->rect.y));
	FUNC13(ctx, cfg, EXYNOS_CIOYOFF);
	cfg = (FUNC1(buf->rect.x) |
		FUNC2(buf->rect.y));
	FUNC13(ctx, cfg, EXYNOS_CIOCBOFF);
	cfg = (FUNC3(buf->rect.x) |
		FUNC4(buf->rect.y));
	FUNC13(ctx, cfg, EXYNOS_CIOCROFF);
}