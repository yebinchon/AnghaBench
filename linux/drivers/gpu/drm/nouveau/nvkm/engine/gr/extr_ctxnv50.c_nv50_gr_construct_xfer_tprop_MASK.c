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
	int magic1, magic2;
	if (device->chipset == 0x50) {
		magic1 = 0x3ff;
		magic2 = 0x00003e60;
	} else if (!FUNC0(device->chipset)) {
		magic1 = 0x7ff;
		magic2 = 0x001ffe67;
	} else {
		magic1 = 0x7ff;
		magic2 = 0x00087e67;
	}
	FUNC1(ctx, 1, 0);		/* 00000007 ALPHA_TEST_FUNC */
	FUNC1(ctx, 1, 0);		/* ffffffff ALPHA_TEST_REF */
	FUNC1(ctx, 1, 0);		/* 00000001 ALPHA_TEST_ENABLE */
	if (FUNC0(device->chipset))
		FUNC1(ctx, 1, 1);	/* 0000000f UNK16A0 */
	FUNC1(ctx, 1, 0);		/* 7/f MULTISAMPLE_SAMPLES_LOG2 */
	FUNC1(ctx, 1, 0);		/* 00000001 tesla UNK1534 */
	FUNC1(ctx, 1, 0);		/* 000000ff STENCIL_BACK_MASK */
	FUNC1(ctx, 3, 0);		/* 00000007 STENCIL_BACK_OP_FAIL, ZFAIL, ZPASS */
	FUNC1(ctx, 4, 0);		/* ffffffff BLEND_COLOR */
	FUNC1(ctx, 1, 0);		/* 00000001 UNK19C0 */
	FUNC1(ctx, 1, 0);		/* 00000001 UNK0FDC */
	FUNC1(ctx, 1, 0xf);		/* 0000000f COLOR_MASK */
	FUNC1(ctx, 7, 0);		/* 0000000f COLOR_MASK */
	FUNC1(ctx, 1, 0);		/* 00000001 DEPTH_TEST_ENABLE */
	FUNC1(ctx, 1, 0);		/* 00000001 DEPTH_WRITE_ENABLE */
	FUNC1(ctx, 1, 0);		/* 00000001 LOGIC_OP_ENABLE */
	FUNC1(ctx, 1, 0);		/* ff[NV50]/3ff[NV84+] */
	FUNC1(ctx, 1, 4);		/* 00000007 FP_CONTROL */
	FUNC1(ctx, 4, 0xffff);	/* 0000ffff MSAA_MASK */
	FUNC1(ctx, 1, 0);		/* 000000ff STENCIL_FRONT_MASK */
	FUNC1(ctx, 3, 0);		/* 00000007 STENCIL_FRONT_OP_FAIL, ZFAIL, ZPASS */
	FUNC1(ctx, 1, 0);		/* 00000001 STENCIL_FRONT_ENABLE */
	FUNC1(ctx, 1, 0);		/* 00000001 STENCIL_BACK_ENABLE */
	FUNC1(ctx, 2, 0);		/* 00007fff WINDOW_OFFSET_XY */
	FUNC1(ctx, 1, 1);		/* 00000001 tesla UNK19CC */
	FUNC1(ctx, 1, 0);		/* 7 */
	FUNC1(ctx, 1, 0);		/* 00000001 SAMPLECNT_ENABLE */
	FUNC1(ctx, 1, 0);		/* 0000000f ZETA_FORMAT */
	FUNC1(ctx, 1, 1);		/* 00000001 ZETA_ENABLE */
	FUNC1(ctx, 1, 0);		/* ffffffff COLOR_KEY */
	FUNC1(ctx, 1, 0);		/* 00000001 COLOR_KEY_ENABLE */
	FUNC1(ctx, 1, 0);		/* 00000007 COLOR_KEY_FORMAT */
	FUNC1(ctx, 2, 0);		/* ffffffff SIFC_BITMAP_COLOR */
	FUNC1(ctx, 1, 1);		/* 00000001 SIFC_BITMAP_WRITE_BIT0_ENABLE */
	FUNC1(ctx, 1, 0);		/* 00000007 ALPHA_TEST_FUNC */
	FUNC1(ctx, 1, 0);		/* 00000001 ALPHA_TEST_ENABLE */
	if (FUNC0(device->chipset)) {
		FUNC1(ctx, 1, 3);	/* 00000003 tesla UNK16B4 */
		FUNC1(ctx, 1, 0);	/* 00000003 */
		FUNC1(ctx, 1, 0);	/* 00000003 tesla UNK1298 */
	} else if (device->chipset >= 0xa0) {
		FUNC1(ctx, 1, 1);	/* 00000001 tesla UNK16B4 */
		FUNC1(ctx, 1, 0);	/* 00000003 */
	} else {
		FUNC1(ctx, 1, 0);	/* 00000003 MULTISAMPLE_CTRL */
	}
	FUNC1(ctx, 1, 0);		/* 00000001 tesla UNK1534 */
	FUNC1(ctx, 8, 0);		/* 00000001 BLEND_ENABLE */
	FUNC1(ctx, 1, 1);		/* 0000001f BLEND_FUNC_DST_ALPHA */
	FUNC1(ctx, 1, 1);		/* 00000007 BLEND_EQUATION_ALPHA */
	FUNC1(ctx, 1, 2);		/* 0000001f BLEND_FUNC_SRC_ALPHA */
	FUNC1(ctx, 1, 1);		/* 0000001f BLEND_FUNC_DST_RGB */
	FUNC1(ctx, 1, 1);		/* 00000007 BLEND_EQUATION_RGB */
	FUNC1(ctx, 1, 2);		/* 0000001f BLEND_FUNC_SRC_RGB */
	if (FUNC0(device->chipset)) {
		FUNC1(ctx, 1, 0);	/* 00000001 UNK12E4 */
		FUNC1(ctx, 8, 1);	/* 00000007 IBLEND_EQUATION_RGB */
		FUNC1(ctx, 8, 1);	/* 00000007 IBLEND_EQUATION_ALPHA */
		FUNC1(ctx, 8, 1);	/* 00000001 IBLEND_UNK00 */
		FUNC1(ctx, 8, 2);	/* 0000001f IBLEND_SRC_RGB */
		FUNC1(ctx, 8, 1);	/* 0000001f IBLEND_DST_RGB */
		FUNC1(ctx, 8, 2);	/* 0000001f IBLEND_SRC_ALPHA */
		FUNC1(ctx, 8, 1);	/* 0000001f IBLEND_DST_ALPHA */
		FUNC1(ctx, 1, 0);	/* 00000001 UNK1140 */
	}
	FUNC1(ctx, 1, 1);		/* 00000001 UNK133C */
	FUNC1(ctx, 1, 0);		/* ffff0ff3 */
	FUNC1(ctx, 1, 0x11);		/* 3f/7f RT_FORMAT */
	FUNC1(ctx, 7, 0);		/* 3f/7f RT_FORMAT */
	FUNC1(ctx, 1, 0x0fac6881);	/* 0fffffff RT_CONTROL */
	FUNC1(ctx, 1, 0);		/* 00000001 LOGIC_OP_ENABLE */
	FUNC1(ctx, 1, 0);		/* ff/3ff */
	FUNC1(ctx, 1, 4);		/* 00000007 FP_CONTROL */
	FUNC1(ctx, 1, 0);		/* 00000003 UNK0F90 */
	FUNC1(ctx, 1, 0);		/* 00000001 FRAMEBUFFER_SRGB */
	FUNC1(ctx, 1, 0);		/* 7 */
	FUNC1(ctx, 1, 0x11);		/* 3f/7f DST_FORMAT */
	FUNC1(ctx, 1, 1);		/* 00000001 DST_LINEAR */
	FUNC1(ctx, 1, 0);		/* 00000007 OPERATION */
	FUNC1(ctx, 1, 0xcf);		/* 000000ff SIFC_FORMAT */
	FUNC1(ctx, 1, 0xcf);		/* 000000ff DRAW_COLOR_FORMAT */
	FUNC1(ctx, 1, 0xcf);		/* 000000ff SRC_FORMAT */
	if (FUNC0(device->chipset))
		FUNC1(ctx, 1, 1);	/* 0000001f tesla UNK169C */
	FUNC1(ctx, 1, 0);		/* ffffffff tesla UNK1A3C */
	FUNC1(ctx, 1, 0);		/* 7/f[NVA3] MULTISAMPLE_SAMPLES_LOG2 */
	FUNC1(ctx, 8, 0);		/* 00000001 BLEND_ENABLE */
	FUNC1(ctx, 1, 1);		/* 0000001f BLEND_FUNC_DST_ALPHA */
	FUNC1(ctx, 1, 1);		/* 00000007 BLEND_EQUATION_ALPHA */
	FUNC1(ctx, 1, 2);		/* 0000001f BLEND_FUNC_SRC_ALPHA */
	FUNC1(ctx, 1, 1);		/* 0000001f BLEND_FUNC_DST_RGB */
	FUNC1(ctx, 1, 1);		/* 00000007 BLEND_EQUATION_RGB */
	FUNC1(ctx, 1, 2);		/* 0000001f BLEND_FUNC_SRC_RGB */
	FUNC1(ctx, 1, 1);		/* 00000001 UNK133C */
	FUNC1(ctx, 1, 0);		/* ffff0ff3 */
	FUNC1(ctx, 8, 1);		/* 00000001 UNK19E0 */
	FUNC1(ctx, 1, 0x11);		/* 3f/7f RT_FORMAT */
	FUNC1(ctx, 7, 0);		/* 3f/7f RT_FORMAT */
	FUNC1(ctx, 1, 0x0fac6881);	/* 0fffffff RT_CONTROL */
	FUNC1(ctx, 1, 0xf);		/* 0000000f COLOR_MASK */
	FUNC1(ctx, 7, 0);		/* 0000000f COLOR_MASK */
	FUNC1(ctx, 1, magic2);	/* 001fffff tesla UNK0F78 */
	FUNC1(ctx, 1, 0);		/* 00000001 DEPTH_BOUNDS_EN */
	FUNC1(ctx, 1, 0);		/* 00000001 DEPTH_TEST_ENABLE */
	FUNC1(ctx, 1, 0x11);		/* 3f/7f DST_FORMAT */
	FUNC1(ctx, 1, 1);		/* 00000001 DST_LINEAR */
	if (FUNC0(device->chipset))
		FUNC1(ctx, 1, 1);	/* 0000001f tesla UNK169C */
	if (device->chipset == 0x50)
		FUNC1(ctx, 1, 0);	/* ff */
	else
		FUNC1(ctx, 3, 0);	/* 1, 7, 3ff */
	FUNC1(ctx, 1, 4);		/* 00000007 FP_CONTROL */
	FUNC1(ctx, 1, 0);		/* 00000003 UNK0F90 */
	FUNC1(ctx, 1, 0);		/* 00000001 STENCIL_FRONT_ENABLE */
	FUNC1(ctx, 1, 0);		/* 00000007 */
	FUNC1(ctx, 1, 0);		/* 00000001 SAMPLECNT_ENABLE */
	FUNC1(ctx, 1, 0);		/* 0000000f ZETA_FORMAT */
	FUNC1(ctx, 1, 1);		/* 00000001 ZETA_ENABLE */
	FUNC1(ctx, 1, 0);		/* ffffffff tesla UNK1A3C */
	FUNC1(ctx, 1, 0);		/* 7/f MULTISAMPLE_SAMPLES_LOG2 */
	FUNC1(ctx, 1, 0);		/* 00000001 tesla UNK1534 */
	FUNC1(ctx, 1, 0);		/* ffff0ff3 */
	FUNC1(ctx, 1, 0x11);		/* 3f/7f RT_FORMAT */
	FUNC1(ctx, 7, 0);		/* 3f/7f RT_FORMAT */
	FUNC1(ctx, 1, 0x0fac6881);	/* 0fffffff RT_CONTROL */
	FUNC1(ctx, 1, 0);		/* 00000001 DEPTH_BOUNDS_EN */
	FUNC1(ctx, 1, 0);		/* 00000001 DEPTH_TEST_ENABLE */
	FUNC1(ctx, 1, 0);		/* 00000001 DEPTH_WRITE_ENABLE */
	FUNC1(ctx, 1, 0x11);		/* 3f/7f DST_FORMAT */
	FUNC1(ctx, 1, 1);		/* 00000001 DST_LINEAR */
	FUNC1(ctx, 1, 0);		/* 000fffff BLIT_DU_DX_FRACT */
	FUNC1(ctx, 1, 1);		/* 0001ffff BLIT_DU_DX_INT */
	FUNC1(ctx, 1, 0);		/* 000fffff BLIT_DV_DY_FRACT */
	FUNC1(ctx, 1, 1);		/* 0001ffff BLIT_DV_DY_INT */
	FUNC1(ctx, 1, 0);		/* ff/3ff */
	FUNC1(ctx, 1, magic1);	/* 3ff/7ff tesla UNK0D68 */
	FUNC1(ctx, 1, 0);		/* 00000001 STENCIL_FRONT_ENABLE */
	FUNC1(ctx, 1, 1);		/* 00000001 tesla UNK15B4 */
	FUNC1(ctx, 1, 0);		/* 0000000f ZETA_FORMAT */
	FUNC1(ctx, 1, 1);		/* 00000001 ZETA_ENABLE */
	FUNC1(ctx, 1, 0);		/* 00000007 */
	FUNC1(ctx, 1, 0);		/* ffffffff tesla UNK1A3C */
	if (FUNC0(device->chipset))
		FUNC1(ctx, 1, 1);	/* 0000001f tesla UNK169C */
	FUNC1(ctx, 8, 0);		/* 0000ffff DMA_COLOR */
	FUNC1(ctx, 1, 0);		/* 0000ffff DMA_GLOBAL */
	FUNC1(ctx, 1, 0);		/* 0000ffff DMA_LOCAL */
	FUNC1(ctx, 1, 0);		/* 0000ffff DMA_STACK */
	FUNC1(ctx, 1, 0);		/* ff/3ff */
	FUNC1(ctx, 1, 0);		/* 0000ffff DMA_DST */
	FUNC1(ctx, 1, 0);		/* 7 */
	FUNC1(ctx, 1, 0);		/* 7/f MULTISAMPLE_SAMPLES_LOG2 */
	FUNC1(ctx, 1, 0);		/* ffff0ff3 */
	FUNC1(ctx, 8, 0);		/* 000000ff RT_ADDRESS_HIGH */
	FUNC1(ctx, 8, 0);		/* ffffffff RT_LAYER_STRIDE */
	FUNC1(ctx, 8, 0);		/* ffffffff RT_ADDRESS_LOW */
	FUNC1(ctx, 8, 8);		/* 0000007f RT_TILE_MODE */
	FUNC1(ctx, 1, 0x11);		/* 3f/7f RT_FORMAT */
	FUNC1(ctx, 7, 0);		/* 3f/7f RT_FORMAT */
	FUNC1(ctx, 1, 0x0fac6881);	/* 0fffffff RT_CONTROL */
	FUNC1(ctx, 8, 0x400);		/* 0fffffff RT_HORIZ */
	FUNC1(ctx, 8, 0x300);		/* 0000ffff RT_VERT */
	FUNC1(ctx, 1, 1);		/* 00001fff RT_ARRAY_MODE */
	FUNC1(ctx, 1, 0xf);		/* 0000000f COLOR_MASK */
	FUNC1(ctx, 7, 0);		/* 0000000f COLOR_MASK */
	FUNC1(ctx, 1, 0x20);		/* 00000fff DST_TILE_MODE */
	FUNC1(ctx, 1, 0x11);		/* 3f/7f DST_FORMAT */
	FUNC1(ctx, 1, 0x100);		/* 0001ffff DST_HEIGHT */
	FUNC1(ctx, 1, 0);		/* 000007ff DST_LAYER */
	FUNC1(ctx, 1, 1);		/* 00000001 DST_LINEAR */
	FUNC1(ctx, 1, 0);		/* ffffffff DST_ADDRESS_LOW */
	FUNC1(ctx, 1, 0);		/* 000000ff DST_ADDRESS_HIGH */
	FUNC1(ctx, 1, 0x40);		/* 0007ffff DST_PITCH */
	FUNC1(ctx, 1, 0x100);		/* 0001ffff DST_WIDTH */
	FUNC1(ctx, 1, 0);		/* 0000ffff */
	FUNC1(ctx, 1, 3);		/* 00000003 tesla UNK15AC */
	FUNC1(ctx, 1, 0);		/* ff/3ff */
	FUNC1(ctx, 1, 0);		/* 0001ffff GP_BUILTIN_RESULT_EN */
	FUNC1(ctx, 1, 0);		/* 00000003 UNK0F90 */
	FUNC1(ctx, 1, 0);		/* 00000007 */
	if (FUNC0(device->chipset))
		FUNC1(ctx, 1, 1);	/* 0000001f tesla UNK169C */
	FUNC1(ctx, 1, magic2);	/* 001fffff tesla UNK0F78 */
	FUNC1(ctx, 1, 0);		/* 7/f MULTISAMPLE_SAMPLES_LOG2 */
	FUNC1(ctx, 1, 0);		/* 00000001 tesla UNK1534 */
	FUNC1(ctx, 1, 0);		/* ffff0ff3 */
	FUNC1(ctx, 1, 2);		/* 00000003 tesla UNK143C */
	FUNC1(ctx, 1, 0x0fac6881);	/* 0fffffff RT_CONTROL */
	FUNC1(ctx, 1, 0);		/* 0000ffff DMA_ZETA */
	FUNC1(ctx, 1, 0);		/* 00000001 DEPTH_BOUNDS_EN */
	FUNC1(ctx, 1, 0);		/* 00000001 DEPTH_TEST_ENABLE */
	FUNC1(ctx, 1, 0);		/* 00000001 DEPTH_WRITE_ENABLE */
	FUNC1(ctx, 2, 0);		/* ffff, ff/3ff */
	FUNC1(ctx, 1, 0);		/* 0001ffff GP_BUILTIN_RESULT_EN */
	FUNC1(ctx, 1, 0);		/* 00000001 STENCIL_FRONT_ENABLE */
	FUNC1(ctx, 1, 0);		/* 000000ff STENCIL_FRONT_MASK */
	FUNC1(ctx, 1, 1);		/* 00000001 tesla UNK15B4 */
	FUNC1(ctx, 1, 0);		/* 00000007 */
	FUNC1(ctx, 1, 0);		/* ffffffff ZETA_LAYER_STRIDE */
	FUNC1(ctx, 1, 0);		/* 000000ff ZETA_ADDRESS_HIGH */
	FUNC1(ctx, 1, 0);		/* ffffffff ZETA_ADDRESS_LOW */
	FUNC1(ctx, 1, 4);		/* 00000007 ZETA_TILE_MODE */
	FUNC1(ctx, 1, 0);		/* 0000000f ZETA_FORMAT */
	FUNC1(ctx, 1, 1);		/* 00000001 ZETA_ENABLE */
	FUNC1(ctx, 1, 0x400);		/* 0fffffff ZETA_HORIZ */
	FUNC1(ctx, 1, 0x300);		/* 0000ffff ZETA_VERT */
	FUNC1(ctx, 1, 0x1001);	/* 00001fff ZETA_ARRAY_MODE */
	FUNC1(ctx, 1, 0);		/* ffffffff tesla UNK1A3C */
	FUNC1(ctx, 1, 0);		/* 7/f MULTISAMPLE_SAMPLES_LOG2 */
	if (FUNC0(device->chipset))
		FUNC1(ctx, 1, 0);	/* 00000001 */
	FUNC1(ctx, 1, 0);		/* ffff0ff3 */
	FUNC1(ctx, 1, 0x11);		/* 3f/7f RT_FORMAT */
	FUNC1(ctx, 7, 0);		/* 3f/7f RT_FORMAT */
	FUNC1(ctx, 1, 0x0fac6881);	/* 0fffffff RT_CONTROL */
	FUNC1(ctx, 1, 0xf);		/* 0000000f COLOR_MASK */
	FUNC1(ctx, 7, 0);		/* 0000000f COLOR_MASK */
	FUNC1(ctx, 1, 0);		/* ff/3ff */
	FUNC1(ctx, 8, 0);		/* 00000001 BLEND_ENABLE */
	FUNC1(ctx, 1, 0);		/* 00000003 UNK0F90 */
	FUNC1(ctx, 1, 0);		/* 00000001 FRAMEBUFFER_SRGB */
	FUNC1(ctx, 1, 0);		/* 7 */
	FUNC1(ctx, 1, 0);		/* 00000001 LOGIC_OP_ENABLE */
	if (FUNC0(device->chipset)) {
		FUNC1(ctx, 1, 0);	/* 00000001 UNK1140 */
		FUNC1(ctx, 1, 1);	/* 0000001f tesla UNK169C */
	}
	FUNC1(ctx, 1, 0);		/* 7/f MULTISAMPLE_SAMPLES_LOG2 */
	FUNC1(ctx, 1, 0);		/* 00000001 UNK1534 */
	FUNC1(ctx, 1, 0);		/* ffff0ff3 */
	if (device->chipset >= 0xa0)
		FUNC1(ctx, 1, 0x0fac6881);	/* fffffff */
	FUNC1(ctx, 1, magic2);	/* 001fffff tesla UNK0F78 */
	FUNC1(ctx, 1, 0);		/* 00000001 DEPTH_BOUNDS_EN */
	FUNC1(ctx, 1, 0);		/* 00000001 DEPTH_TEST_ENABLE */
	FUNC1(ctx, 1, 0);		/* 00000001 DEPTH_WRITE_ENABLE */
	FUNC1(ctx, 1, 0x11);		/* 3f/7f DST_FORMAT */
	FUNC1(ctx, 1, 0);		/* 00000001 tesla UNK0FB0 */
	FUNC1(ctx, 1, 0);		/* ff/3ff */
	FUNC1(ctx, 1, 4);		/* 00000007 FP_CONTROL */
	FUNC1(ctx, 1, 0);		/* 00000001 STENCIL_FRONT_ENABLE */
	FUNC1(ctx, 1, 1);		/* 00000001 tesla UNK15B4 */
	FUNC1(ctx, 1, 1);		/* 00000001 tesla UNK19CC */
	FUNC1(ctx, 1, 0);		/* 00000007 */
	FUNC1(ctx, 1, 0);		/* 00000001 SAMPLECNT_ENABLE */
	FUNC1(ctx, 1, 0);		/* 0000000f ZETA_FORMAT */
	FUNC1(ctx, 1, 1);		/* 00000001 ZETA_ENABLE */
	if (FUNC0(device->chipset)) {
		FUNC1(ctx, 1, 1);	/* 0000001f tesla UNK169C */
		FUNC1(ctx, 1, 0);	/* 0000000f tesla UNK15C8 */
	}
	FUNC1(ctx, 1, 0);		/* ffffffff tesla UNK1A3C */
	if (device->chipset >= 0xa0) {
		FUNC1(ctx, 3, 0);		/* 7/f, 1, ffff0ff3 */
		FUNC1(ctx, 1, 0xfac6881);	/* fffffff */
		FUNC1(ctx, 4, 0);		/* 1, 1, 1, 3ff */
		FUNC1(ctx, 1, 4);		/* 7 */
		FUNC1(ctx, 1, 0);		/* 1 */
		FUNC1(ctx, 2, 1);		/* 1 */
		FUNC1(ctx, 2, 0);		/* 7, f */
		FUNC1(ctx, 1, 1);		/* 1 */
		FUNC1(ctx, 1, 0);		/* 7/f */
		if (FUNC0(device->chipset))
			FUNC1(ctx, 0x9, 0);	/* 1 */
		else
			FUNC1(ctx, 0x8, 0);	/* 1 */
		FUNC1(ctx, 1, 0);		/* ffff0ff3 */
		FUNC1(ctx, 8, 1);		/* 1 */
		FUNC1(ctx, 1, 0x11);		/* 7f */
		FUNC1(ctx, 7, 0);		/* 7f */
		FUNC1(ctx, 1, 0xfac6881);	/* fffffff */
		FUNC1(ctx, 1, 0xf);		/* f */
		FUNC1(ctx, 7, 0);		/* f */
		FUNC1(ctx, 1, 0x11);		/* 7f */
		FUNC1(ctx, 1, 1);		/* 1 */
		FUNC1(ctx, 5, 0);		/* 1, 7, 3ff, 3, 7 */
		if (FUNC0(device->chipset)) {
			FUNC1(ctx, 1, 0);	/* 00000001 UNK1140 */
			FUNC1(ctx, 1, 1);	/* 0000001f tesla UNK169C */
		}
	}
}