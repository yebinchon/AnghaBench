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
struct gsc_scaler {scalar_t__ range; } ;
struct gsc_context {struct gsc_scaler sc; } ;
struct TYPE_6__ {scalar_t__ w; int /*<<< orphan*/  h; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_5__ {int* pitch; int /*<<< orphan*/  height; } ;
struct exynos_drm_ipp_buffer {TYPE_3__ rect; TYPE_2__ buf; TYPE_1__* format; } ;
struct TYPE_4__ {int* cpp; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GSC_CROPPED_SIZE ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  GSC_IN_CON ; 
 int GSC_IN_RGB_HD_NARROW ; 
 int GSC_IN_RGB_HD_WIDE ; 
 int GSC_IN_RGB_SD_NARROW ; 
 int GSC_IN_RGB_SD_WIDE ; 
 int GSC_IN_RGB_TYPE_MASK ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int GSC_SRCIMG_HEIGHT_MASK ; 
 int /*<<< orphan*/  GSC_SRCIMG_OFFSET ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GSC_SRCIMG_SIZE ; 
 int FUNC5 (int) ; 
 int GSC_SRCIMG_WIDTH_MASK ; 
 scalar_t__ GSC_WIDTH_ITU_709 ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct gsc_context *ctx,
			     struct exynos_drm_ipp_buffer *buf)
{
	struct gsc_scaler *sc = &ctx->sc;
	u32 cfg;

	/* pixel offset */
	cfg = (FUNC3(buf->rect.x) |
		FUNC4(buf->rect.y));
	FUNC7(cfg, GSC_SRCIMG_OFFSET);

	/* cropped size */
	cfg = (FUNC1(buf->rect.w) |
		FUNC0(buf->rect.h));
	FUNC7(cfg, GSC_CROPPED_SIZE);

	/* original size */
	cfg = FUNC6(GSC_SRCIMG_SIZE);
	cfg &= ~(GSC_SRCIMG_HEIGHT_MASK |
		GSC_SRCIMG_WIDTH_MASK);

	cfg |= (FUNC5(buf->buf.pitch[0] / buf->format->cpp[0]) |
		FUNC2(buf->buf.height));

	FUNC7(cfg, GSC_SRCIMG_SIZE);

	cfg = FUNC6(GSC_IN_CON);
	cfg &= ~GSC_IN_RGB_TYPE_MASK;

	if (buf->rect.w >= GSC_WIDTH_ITU_709)
		if (sc->range)
			cfg |= GSC_IN_RGB_HD_WIDE;
		else
			cfg |= GSC_IN_RGB_HD_NARROW;
	else
		if (sc->range)
			cfg |= GSC_IN_RGB_SD_WIDE;
		else
			cfg |= GSC_IN_RGB_SD_NARROW;

	FUNC7(cfg, GSC_IN_CON);
}