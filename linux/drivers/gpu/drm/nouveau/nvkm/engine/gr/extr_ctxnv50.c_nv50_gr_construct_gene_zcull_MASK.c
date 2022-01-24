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
 int /*<<< orphan*/  FUNC0 (struct nvkm_grctx*,int,int) ; 

__attribute__((used)) static void
FUNC1(struct nvkm_grctx *ctx)
{
	struct nvkm_device *device = ctx->device;
	/* end of strand 0 on pre-NVA0, beginning of strand 6 on NVAx */
	/* SEEK */
	FUNC0(ctx, 1, 0x3f);		/* 0000003f UNK1590 */
	FUNC0(ctx, 1, 0);		/* 00000001 ALPHA_TEST_ENABLE */
	FUNC0(ctx, 1, 0);		/* 00000007 MULTISAMPLE_SAMPLES_LOG2 */
	FUNC0(ctx, 1, 0);		/* 00000001 tesla UNK1534 */
	FUNC0(ctx, 1, 0);		/* 00000007 STENCIL_BACK_FUNC_FUNC */
	FUNC0(ctx, 1, 0);		/* 000000ff STENCIL_BACK_FUNC_MASK */
	FUNC0(ctx, 1, 0);		/* 000000ff STENCIL_BACK_FUNC_REF */
	FUNC0(ctx, 1, 0);		/* 000000ff STENCIL_BACK_MASK */
	FUNC0(ctx, 3, 0);		/* 00000007 STENCIL_BACK_OP_FAIL, ZFAIL, ZPASS */
	FUNC0(ctx, 1, 2);		/* 00000003 tesla UNK143C */
	FUNC0(ctx, 2, 0x04000000);	/* 07ffffff tesla UNK0D6C */
	FUNC0(ctx, 1, 0);		/* ffff0ff3 */
	FUNC0(ctx, 1, 0);		/* 00000001 CLIPID_ENABLE */
	FUNC0(ctx, 2, 0);		/* ffffffff DEPTH_BOUNDS */
	FUNC0(ctx, 1, 0);		/* 00000001 */
	FUNC0(ctx, 1, 0);		/* 00000007 DEPTH_TEST_FUNC */
	FUNC0(ctx, 1, 0);		/* 00000001 DEPTH_TEST_ENABLE */
	FUNC0(ctx, 1, 0);		/* 00000001 DEPTH_WRITE_ENABLE */
	FUNC0(ctx, 1, 4);		/* 0000000f CULL_MODE */
	FUNC0(ctx, 1, 0);		/* 0000ffff */
	FUNC0(ctx, 1, 0);		/* 00000001 UNK0FB0 */
	FUNC0(ctx, 1, 0);		/* 00000001 POLYGON_STIPPLE_ENABLE */
	FUNC0(ctx, 1, 4);		/* 00000007 FP_CONTROL */
	FUNC0(ctx, 1, 0);		/* ffffffff */
	FUNC0(ctx, 1, 0);		/* 0001ffff GP_BUILTIN_RESULT_EN */
	FUNC0(ctx, 1, 0);		/* 000000ff CLEAR_STENCIL */
	FUNC0(ctx, 1, 0);		/* 00000007 STENCIL_FRONT_FUNC_FUNC */
	FUNC0(ctx, 1, 0);		/* 000000ff STENCIL_FRONT_FUNC_MASK */
	FUNC0(ctx, 1, 0);		/* 000000ff STENCIL_FRONT_FUNC_REF */
	FUNC0(ctx, 1, 0);		/* 000000ff STENCIL_FRONT_MASK */
	FUNC0(ctx, 3, 0);		/* 00000007 STENCIL_FRONT_OP_FAIL, ZFAIL, ZPASS */
	FUNC0(ctx, 1, 0);		/* 00000001 STENCIL_FRONT_ENABLE */
	FUNC0(ctx, 1, 0);		/* 00000001 STENCIL_BACK_ENABLE */
	FUNC0(ctx, 1, 0);		/* ffffffff CLEAR_DEPTH */
	FUNC0(ctx, 1, 0);		/* 00000007 */
	if (device->chipset != 0x50)
		FUNC0(ctx, 1, 0);	/* 00000003 tesla UNK1108 */
	FUNC0(ctx, 1, 0);		/* 00000001 SAMPLECNT_ENABLE */
	FUNC0(ctx, 1, 0);		/* 0000000f ZETA_FORMAT */
	FUNC0(ctx, 1, 1);		/* 00000001 ZETA_ENABLE */
	FUNC0(ctx, 1, 0x1001);	/* 00001fff ZETA_ARRAY_MODE */
	/* SEEK */
	FUNC0(ctx, 4, 0xffff);	/* 0000ffff MSAA_MASK */
	FUNC0(ctx, 0x10, 0);		/* 00000001 SCISSOR_ENABLE */
	FUNC0(ctx, 0x10, 0);		/* ffffffff DEPTH_RANGE_NEAR */
	FUNC0(ctx, 0x10, 0x3f800000);	/* ffffffff DEPTH_RANGE_FAR */
	FUNC0(ctx, 1, 0x10);		/* 7f/ff/3ff VIEW_VOLUME_CLIP_CTRL */
	FUNC0(ctx, 1, 0);		/* 00000001 VIEWPORT_CLIP_RECTS_EN */
	FUNC0(ctx, 1, 3);		/* 00000003 FP_CTRL_UNK196C */
	FUNC0(ctx, 1, 0);		/* 00000003 tesla UNK1968 */
	if (device->chipset != 0x50)
		FUNC0(ctx, 1, 0);	/* 0fffffff tesla UNK1104 */
	FUNC0(ctx, 1, 0);		/* 00000001 tesla UNK151C */
}