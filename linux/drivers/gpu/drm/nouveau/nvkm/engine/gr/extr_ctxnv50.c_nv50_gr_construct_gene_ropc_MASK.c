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
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_grctx*,int,int) ; 

__attribute__((used)) static void
FUNC3(struct nvkm_grctx *ctx)
{
	struct nvkm_device *device = ctx->device;
	int magic2;
	if (device->chipset == 0x50) {
		magic2 = 0x00003e60;
	} else if (!FUNC0(device->chipset)) {
		magic2 = 0x001ffe67;
	} else {
		magic2 = 0x00087e67;
	}
	FUNC2(ctx, 1, 0);		/* f/7 MUTISAMPLE_SAMPLES_LOG2 */
	FUNC2(ctx, 1, 0);		/* 00000001 tesla UNK1534 */
	FUNC2(ctx, 1, 0);		/* 00000007 STENCIL_BACK_FUNC_FUNC */
	FUNC2(ctx, 1, 0);		/* 000000ff STENCIL_BACK_FUNC_MASK */
	FUNC2(ctx, 1, 0);		/* 000000ff STENCIL_BACK_MASK */
	FUNC2(ctx, 3, 0);		/* 00000007 STENCIL_BACK_OP_FAIL, ZFAIL, ZPASS */
	FUNC2(ctx, 1, 2);		/* 00000003 tesla UNK143C */
	FUNC2(ctx, 1, 0);		/* ffff0ff3 */
	FUNC2(ctx, 1, magic2);	/* 001fffff tesla UNK0F78 */
	FUNC2(ctx, 1, 0);		/* 00000001 DEPTH_BOUNDS_EN */
	FUNC2(ctx, 1, 0);		/* 00000007 DEPTH_TEST_FUNC */
	FUNC2(ctx, 1, 0);		/* 00000001 DEPTH_TEST_ENABLE */
	FUNC2(ctx, 1, 0);		/* 00000001 DEPTH_WRITE_ENABLE */
	if (FUNC0(device->chipset))
		FUNC2(ctx, 1, 1);	/* 0000001f tesla UNK169C */
	FUNC2(ctx, 1, 0);		/* 00000007 STENCIL_FRONT_FUNC_FUNC */
	FUNC2(ctx, 1, 0);		/* 000000ff STENCIL_FRONT_FUNC_MASK */
	FUNC2(ctx, 1, 0);		/* 000000ff STENCIL_FRONT_MASK */
	FUNC2(ctx, 3, 0);		/* 00000007 STENCIL_FRONT_OP_FAIL, ZFAIL, ZPASS */
	FUNC2(ctx, 1, 0);		/* 00000001 STENCIL_FRONT_ENABLE */
	if (device->chipset >= 0xa0 && !FUNC1(device->chipset))
		FUNC2(ctx, 1, 0x15);	/* 000000ff */
	FUNC2(ctx, 1, 0);		/* 00000001 STENCIL_BACK_ENABLE */
	FUNC2(ctx, 1, 1);		/* 00000001 tesla UNK15B4 */
	FUNC2(ctx, 1, 0x10);		/* 3ff/ff VIEW_VOLUME_CLIP_CTRL */
	FUNC2(ctx, 1, 0);		/* ffffffff CLEAR_DEPTH */
	FUNC2(ctx, 1, 0);		/* 0000000f ZETA_FORMAT */
	FUNC2(ctx, 1, 1);		/* 00000001 ZETA_ENABLE */
	FUNC2(ctx, 1, 0);		/* ffffffff tesla UNK1A3C */
	if (device->chipset == 0x86 || device->chipset == 0x92 || device->chipset == 0x98 || device->chipset >= 0xa0) {
		FUNC2(ctx, 3, 0);	/* ff, ffffffff, ffffffff */
		FUNC2(ctx, 1, 4);	/* 7 */
		FUNC2(ctx, 1, 0x400);	/* fffffff */
		FUNC2(ctx, 1, 0x300);	/* ffff */
		FUNC2(ctx, 1, 0x1001);	/* 1fff */
		if (device->chipset != 0xa0) {
			if (FUNC0(device->chipset))
				FUNC2(ctx, 1, 0);	/* 0000000f UNK15C8 */
			else
				FUNC2(ctx, 1, 0x15);	/* ff */
		}
	}
	FUNC2(ctx, 1, 0);		/* 00000007 MULTISAMPLE_SAMPLES_LOG2 */
	FUNC2(ctx, 1, 0);		/* 00000001 tesla UNK1534 */
	FUNC2(ctx, 1, 0);		/* 00000007 STENCIL_BACK_FUNC_FUNC */
	FUNC2(ctx, 1, 0);		/* 000000ff STENCIL_BACK_FUNC_MASK */
	FUNC2(ctx, 1, 0);		/* ffff0ff3 */
	FUNC2(ctx, 1, 2);		/* 00000003 tesla UNK143C */
	FUNC2(ctx, 1, 0);		/* 00000001 DEPTH_BOUNDS_EN */
	FUNC2(ctx, 1, 0);		/* 00000007 DEPTH_TEST_FUNC */
	FUNC2(ctx, 1, 0);		/* 00000001 DEPTH_TEST_ENABLE */
	FUNC2(ctx, 1, 0);		/* 00000001 DEPTH_WRITE_ENABLE */
	FUNC2(ctx, 1, 0);		/* 00000007 STENCIL_FRONT_FUNC_FUNC */
	FUNC2(ctx, 1, 0);		/* 000000ff STENCIL_FRONT_FUNC_MASK */
	FUNC2(ctx, 1, 0);		/* 00000001 STENCIL_FRONT_ENABLE */
	FUNC2(ctx, 1, 0);		/* 00000001 STENCIL_BACK_ENABLE */
	FUNC2(ctx, 1, 1);		/* 00000001 tesla UNK15B4 */
	FUNC2(ctx, 1, 0x10);		/* 7f/ff VIEW_VOLUME_CLIP_CTRL */
	FUNC2(ctx, 1, 0);		/* 0000000f ZETA_FORMAT */
	FUNC2(ctx, 1, 1);		/* 00000001 ZETA_ENABLE */
	FUNC2(ctx, 1, 0);		/* ffffffff tesla UNK1A3C */
	FUNC2(ctx, 1, 0);		/* 00000001 tesla UNK1534 */
	FUNC2(ctx, 1, 0);		/* 00000001 tesla UNK1900 */
	FUNC2(ctx, 1, 0);		/* 00000007 STENCIL_BACK_FUNC_FUNC */
	FUNC2(ctx, 1, 0);		/* 000000ff STENCIL_BACK_FUNC_MASK */
	FUNC2(ctx, 1, 0);		/* 000000ff STENCIL_BACK_FUNC_REF */
	FUNC2(ctx, 2, 0);		/* ffffffff DEPTH_BOUNDS */
	FUNC2(ctx, 1, 0);		/* 00000001 DEPTH_BOUNDS_EN */
	FUNC2(ctx, 1, 0);		/* 00000007 DEPTH_TEST_FUNC */
	FUNC2(ctx, 1, 0);		/* 00000001 DEPTH_TEST_ENABLE */
	FUNC2(ctx, 1, 0);		/* 00000001 DEPTH_WRITE_ENABLE */
	FUNC2(ctx, 1, 0);		/* 0000000f */
	FUNC2(ctx, 1, 0);		/* 00000001 tesla UNK0FB0 */
	FUNC2(ctx, 1, 0);		/* 00000007 STENCIL_FRONT_FUNC_FUNC */
	FUNC2(ctx, 1, 0);		/* 000000ff STENCIL_FRONT_FUNC_MASK */
	FUNC2(ctx, 1, 0);		/* 000000ff STENCIL_FRONT_FUNC_REF */
	FUNC2(ctx, 1, 0);		/* 00000001 STENCIL_FRONT_ENABLE */
	FUNC2(ctx, 1, 0);		/* 00000001 STENCIL_BACK_ENABLE */
	FUNC2(ctx, 1, 0x10);		/* 7f/ff VIEW_VOLUME_CLIP_CTRL */
	FUNC2(ctx, 0x10, 0);		/* ffffffff DEPTH_RANGE_NEAR */
	FUNC2(ctx, 0x10, 0x3f800000);	/* ffffffff DEPTH_RANGE_FAR */
	FUNC2(ctx, 1, 0);		/* 0000000f ZETA_FORMAT */
	FUNC2(ctx, 1, 0);		/* 00000007 MULTISAMPLE_SAMPLES_LOG2 */
	FUNC2(ctx, 1, 0);		/* 00000007 STENCIL_BACK_FUNC_FUNC */
	FUNC2(ctx, 1, 0);		/* 000000ff STENCIL_BACK_FUNC_MASK */
	FUNC2(ctx, 1, 0);		/* 000000ff STENCIL_BACK_FUNC_REF */
	FUNC2(ctx, 1, 0);		/* 000000ff STENCIL_BACK_MASK */
	FUNC2(ctx, 3, 0);		/* 00000007 STENCIL_BACK_OP_FAIL, ZFAIL, ZPASS */
	FUNC2(ctx, 2, 0);		/* ffffffff DEPTH_BOUNDS */
	FUNC2(ctx, 1, 0);		/* 00000001 DEPTH_BOUNDS_EN */
	FUNC2(ctx, 1, 0);		/* 00000007 DEPTH_TEST_FUNC */
	FUNC2(ctx, 1, 0);		/* 00000001 DEPTH_TEST_ENABLE */
	FUNC2(ctx, 1, 0);		/* 00000001 DEPTH_WRITE_ENABLE */
	FUNC2(ctx, 1, 0);		/* 000000ff CLEAR_STENCIL */
	FUNC2(ctx, 1, 0);		/* 00000007 STENCIL_FRONT_FUNC_FUNC */
	FUNC2(ctx, 1, 0);		/* 000000ff STENCIL_FRONT_FUNC_MASK */
	FUNC2(ctx, 1, 0);		/* 000000ff STENCIL_FRONT_FUNC_REF */
	FUNC2(ctx, 1, 0);		/* 000000ff STENCIL_FRONT_MASK */
	FUNC2(ctx, 3, 0);		/* 00000007 STENCIL_FRONT_OP_FAIL, ZFAIL, ZPASS */
	FUNC2(ctx, 1, 0);		/* 00000001 STENCIL_FRONT_ENABLE */
	FUNC2(ctx, 1, 0);		/* 00000001 STENCIL_BACK_ENABLE */
	FUNC2(ctx, 1, 0x10);		/* 7f/ff VIEW_VOLUME_CLIP_CTRL */
	FUNC2(ctx, 1, 0);		/* 0000000f ZETA_FORMAT */
	FUNC2(ctx, 1, 0x3f);		/* 0000003f UNK1590 */
	FUNC2(ctx, 1, 0);		/* 00000007 MULTISAMPLE_SAMPLES_LOG2 */
	FUNC2(ctx, 1, 0);		/* 00000001 tesla UNK1534 */
	FUNC2(ctx, 2, 0);		/* ffff0ff3, ffff */
	FUNC2(ctx, 1, 0);		/* 00000001 tesla UNK0FB0 */
	FUNC2(ctx, 1, 0);		/* 0001ffff GP_BUILTIN_RESULT_EN */
	FUNC2(ctx, 1, 1);		/* 00000001 tesla UNK15B4 */
	FUNC2(ctx, 1, 0);		/* 0000000f ZETA_FORMAT */
	FUNC2(ctx, 1, 1);		/* 00000001 ZETA_ENABLE */
	FUNC2(ctx, 1, 0);		/* ffffffff CLEAR_DEPTH */
	FUNC2(ctx, 1, 1);		/* 00000001 tesla UNK19CC */
	if (device->chipset >= 0xa0) {
		FUNC2(ctx, 2, 0);
		FUNC2(ctx, 1, 0x1001);
		FUNC2(ctx, 0xb, 0);
	} else {
		FUNC2(ctx, 1, 0);	/* 00000007 */
		FUNC2(ctx, 1, 0);	/* 00000001 tesla UNK1534 */
		FUNC2(ctx, 1, 0);	/* 00000007 MULTISAMPLE_SAMPLES_LOG2 */
		FUNC2(ctx, 8, 0);	/* 00000001 BLEND_ENABLE */
		FUNC2(ctx, 1, 0);	/* ffff0ff3 */
	}
	FUNC2(ctx, 1, 0x11);		/* 3f/7f RT_FORMAT */
	FUNC2(ctx, 7, 0);		/* 3f/7f RT_FORMAT */
	FUNC2(ctx, 1, 0xf);		/* 0000000f COLOR_MASK */
	FUNC2(ctx, 7, 0);		/* 0000000f COLOR_MASK */
	FUNC2(ctx, 1, 0x11);		/* 3f/7f */
	FUNC2(ctx, 1, 0);		/* 00000001 LOGIC_OP_ENABLE */
	if (device->chipset != 0x50) {
		FUNC2(ctx, 1, 0);	/* 0000000f LOGIC_OP */
		FUNC2(ctx, 1, 0);	/* 000000ff */
	}
	FUNC2(ctx, 1, 0);		/* 00000007 OPERATION */
	FUNC2(ctx, 1, 0);		/* ff/3ff */
	FUNC2(ctx, 1, 0);		/* 00000003 UNK0F90 */
	FUNC2(ctx, 2, 1);		/* 00000007 BLEND_EQUATION_RGB, ALPHA */
	FUNC2(ctx, 1, 1);		/* 00000001 UNK133C */
	FUNC2(ctx, 1, 2);		/* 0000001f BLEND_FUNC_SRC_RGB */
	FUNC2(ctx, 1, 1);		/* 0000001f BLEND_FUNC_DST_RGB */
	FUNC2(ctx, 1, 2);		/* 0000001f BLEND_FUNC_SRC_ALPHA */
	FUNC2(ctx, 1, 1);		/* 0000001f BLEND_FUNC_DST_ALPHA */
	FUNC2(ctx, 1, 0);		/* 00000001 */
	FUNC2(ctx, 1, magic2);	/* 001fffff tesla UNK0F78 */
	FUNC2(ctx, 1, 0);		/* ffffffff tesla UNK1A3C */
	FUNC2(ctx, 1, 0x0fac6881);	/* 0fffffff RT_CONTROL */
	if (FUNC0(device->chipset)) {
		FUNC2(ctx, 1, 0);	/* 00000001 tesla UNK12E4 */
		FUNC2(ctx, 8, 1);	/* 00000007 IBLEND_EQUATION_RGB */
		FUNC2(ctx, 8, 1);	/* 00000007 IBLEND_EQUATION_ALPHA */
		FUNC2(ctx, 8, 1);	/* 00000001 IBLEND_UNK00 */
		FUNC2(ctx, 8, 2);	/* 0000001f IBLEND_FUNC_SRC_RGB */
		FUNC2(ctx, 8, 1);	/* 0000001f IBLEND_FUNC_DST_RGB */
		FUNC2(ctx, 8, 2);	/* 0000001f IBLEND_FUNC_SRC_ALPHA */
		FUNC2(ctx, 8, 1);	/* 0000001f IBLEND_FUNC_DST_ALPHA */
		FUNC2(ctx, 1, 0);	/* 00000001 tesla UNK1140 */
		FUNC2(ctx, 2, 0);	/* 00000001 */
		FUNC2(ctx, 1, 1);	/* 0000001f tesla UNK169C */
		FUNC2(ctx, 1, 0);	/* 0000000f */
		FUNC2(ctx, 1, 0);	/* 00000003 */
		FUNC2(ctx, 1, 0);	/* ffffffff */
		FUNC2(ctx, 2, 0);	/* 00000001 */
		FUNC2(ctx, 1, 1);	/* 0000001f tesla UNK169C */
		FUNC2(ctx, 1, 0);	/* 00000001 */
		FUNC2(ctx, 1, 0);	/* 000003ff */
	} else if (device->chipset >= 0xa0) {
		FUNC2(ctx, 2, 0);	/* 00000001 */
		FUNC2(ctx, 1, 0);	/* 00000007 */
		FUNC2(ctx, 1, 0);	/* 00000003 */
		FUNC2(ctx, 1, 0);	/* ffffffff */
		FUNC2(ctx, 2, 0);	/* 00000001 */
	} else {
		FUNC2(ctx, 1, 0);	/* 00000007 MULTISAMPLE_SAMPLES_LOG2 */
		FUNC2(ctx, 1, 0);	/* 00000003 tesla UNK1430 */
		FUNC2(ctx, 1, 0);	/* ffffffff tesla UNK1A3C */
	}
	FUNC2(ctx, 4, 0);		/* ffffffff CLEAR_COLOR */
	FUNC2(ctx, 4, 0);		/* ffffffff BLEND_COLOR A R G B */
	FUNC2(ctx, 1, 0);		/* 00000fff eng2d UNK2B0 */
	if (device->chipset >= 0xa0)
		FUNC2(ctx, 2, 0);	/* 00000001 */
	FUNC2(ctx, 1, 0);		/* 000003ff */
	FUNC2(ctx, 8, 0);		/* 00000001 BLEND_ENABLE */
	FUNC2(ctx, 1, 1);		/* 00000001 UNK133C */
	FUNC2(ctx, 1, 2);		/* 0000001f BLEND_FUNC_SRC_RGB */
	FUNC2(ctx, 1, 1);		/* 0000001f BLEND_FUNC_DST_RGB */
	FUNC2(ctx, 1, 1);		/* 00000007 BLEND_EQUATION_RGB */
	FUNC2(ctx, 1, 2);		/* 0000001f BLEND_FUNC_SRC_ALPHA */
	FUNC2(ctx, 1, 1);		/* 0000001f BLEND_FUNC_DST_ALPHA */
	FUNC2(ctx, 1, 1);		/* 00000007 BLEND_EQUATION_ALPHA */
	FUNC2(ctx, 1, 0);		/* 00000001 UNK19C0 */
	FUNC2(ctx, 1, 0);		/* 00000001 LOGIC_OP_ENABLE */
	FUNC2(ctx, 1, 0);		/* 0000000f LOGIC_OP */
	if (device->chipset >= 0xa0)
		FUNC2(ctx, 1, 0);	/* 00000001 UNK12E4? NVA3+ only? */
	if (FUNC0(device->chipset)) {
		FUNC2(ctx, 8, 1);	/* 00000001 IBLEND_UNK00 */
		FUNC2(ctx, 8, 1);	/* 00000007 IBLEND_EQUATION_RGB */
		FUNC2(ctx, 8, 2);	/* 0000001f IBLEND_FUNC_SRC_RGB */
		FUNC2(ctx, 8, 1);	/* 0000001f IBLEND_FUNC_DST_RGB */
		FUNC2(ctx, 8, 1);	/* 00000007 IBLEND_EQUATION_ALPHA */
		FUNC2(ctx, 8, 2);	/* 0000001f IBLEND_FUNC_SRC_ALPHA */
		FUNC2(ctx, 8, 1);	/* 0000001f IBLEND_FUNC_DST_ALPHA */
		FUNC2(ctx, 1, 0);	/* 00000001 tesla UNK15C4 */
		FUNC2(ctx, 1, 0);	/* 00000001 */
		FUNC2(ctx, 1, 0);	/* 00000001 tesla UNK1140 */
	}
	FUNC2(ctx, 1, 0x11);		/* 3f/7f DST_FORMAT */
	FUNC2(ctx, 1, 1);		/* 00000001 DST_LINEAR */
	FUNC2(ctx, 1, 0);		/* 00000007 PATTERN_COLOR_FORMAT */
	FUNC2(ctx, 2, 0);		/* ffffffff PATTERN_MONO_COLOR */
	FUNC2(ctx, 1, 0);		/* 00000001 PATTERN_MONO_FORMAT */
	FUNC2(ctx, 2, 0);		/* ffffffff PATTERN_MONO_BITMAP */
	FUNC2(ctx, 1, 0);		/* 00000003 PATTERN_SELECT */
	FUNC2(ctx, 1, 0);		/* 000000ff ROP */
	FUNC2(ctx, 1, 0);		/* ffffffff BETA1 */
	FUNC2(ctx, 1, 0);		/* ffffffff BETA4 */
	FUNC2(ctx, 1, 0);		/* 00000007 OPERATION */
	FUNC2(ctx, 0x50, 0);		/* 10x ffffff, ffffff, ffffff, ffffff, 3 PATTERN */
}