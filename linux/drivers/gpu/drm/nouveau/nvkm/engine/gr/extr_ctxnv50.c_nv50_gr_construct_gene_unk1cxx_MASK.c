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
struct nvkm_grctx {struct nvkm_device* device; } ;
struct nvkm_device {int chipset; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_grctx*,int,int) ; 

__attribute__((used)) static void
FUNC2(struct nvkm_grctx *ctx)
{
	struct nvkm_device *device = ctx->device;
	FUNC1(ctx, 2, 0);		/* 00007fff WINDOW_OFFSET_XY */
	FUNC1(ctx, 1, 0x3f800000);	/* ffffffff LINE_WIDTH */
	FUNC1(ctx, 1, 0);		/* 00000001 LINE_SMOOTH_ENABLE */
	FUNC1(ctx, 1, 0);		/* 00000001 tesla UNK1658 */
	FUNC1(ctx, 1, 0);		/* 00000001 POLYGON_SMOOTH_ENABLE */
	FUNC1(ctx, 3, 0);		/* 00000001 POLYGON_OFFSET_*_ENABLE */
	FUNC1(ctx, 1, 4);		/* 0000000f CULL_MODE */
	FUNC1(ctx, 1, 0x1a);		/* 0000001f POLYGON_MODE */
	FUNC1(ctx, 1, 0);		/* 0000000f ZETA_FORMAT */
	FUNC1(ctx, 1, 0);		/* 00000001 POINT_SPRITE_ENABLE */
	FUNC1(ctx, 1, 1);		/* 00000001 tesla UNK165C */
	FUNC1(ctx, 0x10, 0);		/* 00000001 SCISSOR_ENABLE */
	FUNC1(ctx, 1, 0);		/* 00000001 tesla UNK1534 */
	FUNC1(ctx, 1, 0);		/* 00000001 LINE_STIPPLE_ENABLE */
	FUNC1(ctx, 1, 0x00ffff00);	/* 00ffffff LINE_STIPPLE_PATTERN */
	FUNC1(ctx, 1, 0);		/* ffffffff POLYGON_OFFSET_UNITS */
	FUNC1(ctx, 1, 0);		/* ffffffff POLYGON_OFFSET_FACTOR */
	FUNC1(ctx, 1, 0);		/* 00000003 tesla UNK1668 */
	FUNC1(ctx, 2, 0);		/* 07ffffff SCREEN_SCISSOR */
	FUNC1(ctx, 1, 0);		/* 00000001 tesla UNK1900 */
	FUNC1(ctx, 1, 0xf);		/* 0000000f COLOR_MASK */
	FUNC1(ctx, 7, 0);		/* 0000000f COLOR_MASK */
	FUNC1(ctx, 1, 0x0fac6881);	/* 0fffffff RT_CONTROL */
	FUNC1(ctx, 1, 0x11);		/* 0000007f RT_FORMAT */
	FUNC1(ctx, 7, 0);		/* 0000007f RT_FORMAT */
	FUNC1(ctx, 8, 0);		/* 00000001 RT_HORIZ_LINEAR */
	FUNC1(ctx, 1, 4);		/* 00000007 FP_CONTROL */
	FUNC1(ctx, 1, 0);		/* 00000001 ALPHA_TEST_ENABLE */
	FUNC1(ctx, 1, 0);		/* 00000007 ALPHA_TEST_FUNC */
	if (FUNC0(device->chipset))
		FUNC1(ctx, 1, 3);	/* 00000003 UNK16B4 */
	else if (device->chipset >= 0xa0)
		FUNC1(ctx, 1, 1);	/* 00000001 UNK16B4 */
	FUNC1(ctx, 1, 0);		/* 00000003 MULTISAMPLE_CTRL */
	FUNC1(ctx, 1, 0);		/* 00000003 tesla UNK0F90 */
	FUNC1(ctx, 1, 2);		/* 00000003 tesla UNK143C */
	FUNC1(ctx, 2, 0x04000000);	/* 07ffffff tesla UNK0D6C */
	FUNC1(ctx, 1, 0);		/* 000000ff STENCIL_FRONT_MASK */
	FUNC1(ctx, 1, 0);		/* 00000001 DEPTH_WRITE_ENABLE */
	FUNC1(ctx, 1, 0);		/* 00000001 SAMPLECNT_ENABLE */
	FUNC1(ctx, 1, 5);		/* 0000000f UNK1408 */
	FUNC1(ctx, 1, 0x52);		/* 000001ff SEMANTIC_PTSZ */
	FUNC1(ctx, 1, 0);		/* ffffffff POINT_SIZE */
	FUNC1(ctx, 1, 0);		/* 00000001 */
	FUNC1(ctx, 1, 0);		/* 00000007 tesla UNK0FB4 */
	if (device->chipset != 0x50) {
		FUNC1(ctx, 1, 0);	/* 3ff */
		FUNC1(ctx, 1, 1);	/* 00000001 tesla UNK1110 */
	}
	if (FUNC0(device->chipset))
		FUNC1(ctx, 1, 0);	/* 00000003 tesla UNK1928 */
	FUNC1(ctx, 0x10, 0);		/* ffffffff DEPTH_RANGE_NEAR */
	FUNC1(ctx, 0x10, 0x3f800000);	/* ffffffff DEPTH_RANGE_FAR */
	FUNC1(ctx, 1, 0x10);		/* 000000ff VIEW_VOLUME_CLIP_CTRL */
	FUNC1(ctx, 0x20, 0);		/* 07ffffff VIEWPORT_HORIZ, then VIEWPORT_VERT. (W&0x3fff)<<13 | (X&0x1fff). */
	FUNC1(ctx, 1, 0);		/* ffffffff tesla UNK187C */
	FUNC1(ctx, 1, 0);		/* 00000003 WINDOW_ORIGIN */
	FUNC1(ctx, 1, 0);		/* 00000001 STENCIL_FRONT_ENABLE */
	FUNC1(ctx, 1, 0);		/* 00000001 DEPTH_TEST_ENABLE */
	FUNC1(ctx, 1, 0);		/* 00000001 STENCIL_BACK_ENABLE */
	FUNC1(ctx, 1, 0);		/* 000000ff STENCIL_BACK_MASK */
	FUNC1(ctx, 1, 0x8100c12);	/* 1fffffff FP_INTERPOLANT_CTRL */
	FUNC1(ctx, 1, 5);		/* 0000000f tesla UNK1220 */
	FUNC1(ctx, 1, 0);		/* 00000007 MULTISAMPLE_SAMPLES_LOG2 */
	FUNC1(ctx, 1, 0);		/* 000000ff tesla UNK1A20 */
	FUNC1(ctx, 1, 1);		/* 00000001 ZETA_ENABLE */
	FUNC1(ctx, 1, 0);		/* 00000001 VERTEX_TWO_SIDE_ENABLE */
	FUNC1(ctx, 4, 0xffff);	/* 0000ffff MSAA_MASK */
	if (device->chipset != 0x50)
		FUNC1(ctx, 1, 3);	/* 00000003 tesla UNK1100 */
	if (device->chipset < 0xa0)
		FUNC1(ctx, 0x1c, 0);	/* RO */
	else if (FUNC0(device->chipset))
		FUNC1(ctx, 0x9, 0);
	FUNC1(ctx, 1, 0);		/* 00000001 UNK1534 */
	FUNC1(ctx, 1, 0);		/* 00000001 LINE_SMOOTH_ENABLE */
	FUNC1(ctx, 1, 0);		/* 00000001 LINE_STIPPLE_ENABLE */
	FUNC1(ctx, 1, 0x00ffff00);	/* 00ffffff LINE_STIPPLE_PATTERN */
	FUNC1(ctx, 1, 0x1a);		/* 0000001f POLYGON_MODE */
	FUNC1(ctx, 1, 0);		/* 00000003 WINDOW_ORIGIN */
	if (device->chipset != 0x50) {
		FUNC1(ctx, 1, 3);	/* 00000003 tesla UNK1100 */
		FUNC1(ctx, 1, 0);	/* 3ff */
	}
	/* XXX: the following block could belong either to unk1cxx, or
	 * to STRMOUT. Rather hard to tell. */
	if (device->chipset < 0xa0)
		FUNC1(ctx, 0x25, 0);
	else
		FUNC1(ctx, 0x3b, 0);
}