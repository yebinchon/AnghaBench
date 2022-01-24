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
struct nvkm_grctx {int ctxvals_pos; struct nvkm_device* device; } ;
struct nvkm_device {int chipset; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_grctx*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_grctx*,int,int) ; 

__attribute__((used)) static void
FUNC3(struct nvkm_grctx *ctx)
{
	struct nvkm_device *device = ctx->device;
	int base, num;
	base = ctx->ctxvals_pos;

	/* tesla state */
	FUNC2(ctx, 1, 0);	/* 00000001 UNK0F90 */
	FUNC2(ctx, 1, 0);	/* 00000001 UNK135C */

	/* SRC_TIC state */
	FUNC2(ctx, 1, 0);	/* 00000007 SRC_TILE_MODE_Z */
	FUNC2(ctx, 1, 2);	/* 00000007 SRC_TILE_MODE_Y */
	FUNC2(ctx, 1, 1);	/* 00000001 SRC_LINEAR #1 */
	FUNC2(ctx, 1, 0);	/* 000000ff SRC_ADDRESS_HIGH */
	FUNC2(ctx, 1, 0);	/* 00000001 SRC_SRGB */
	if (device->chipset >= 0x94)
		FUNC2(ctx, 1, 0);	/* 00000003 eng2d UNK0258 */
	FUNC2(ctx, 1, 1);	/* 00000fff SRC_DEPTH */
	FUNC2(ctx, 1, 0x100);	/* 0000ffff SRC_HEIGHT */

	/* turing state */
	FUNC2(ctx, 1, 0);		/* 0000000f TEXTURES_LOG2 */
	FUNC2(ctx, 1, 0);		/* 0000000f SAMPLERS_LOG2 */
	FUNC2(ctx, 1, 0);		/* 000000ff CB_DEF_ADDRESS_HIGH */
	FUNC2(ctx, 1, 0);		/* ffffffff CB_DEF_ADDRESS_LOW */
	FUNC2(ctx, 1, 0);		/* ffffffff SHARED_SIZE */
	FUNC2(ctx, 1, 2);		/* ffffffff REG_MODE */
	FUNC2(ctx, 1, 1);		/* 0000ffff BLOCK_ALLOC_THREADS */
	FUNC2(ctx, 1, 1);		/* 00000001 LANES32 */
	FUNC2(ctx, 1, 0);		/* 000000ff UNK370 */
	FUNC2(ctx, 1, 0);		/* 000000ff USER_PARAM_UNK */
	FUNC2(ctx, 1, 0);		/* 000000ff USER_PARAM_COUNT */
	FUNC2(ctx, 1, 1);		/* 000000ff UNK384 bits 8-15 */
	FUNC2(ctx, 1, 0x3fffff);	/* 003fffff TIC_LIMIT */
	FUNC2(ctx, 1, 0x1fff);	/* 000fffff TSC_LIMIT */
	FUNC2(ctx, 1, 0);		/* 0000ffff CB_ADDR_INDEX */
	FUNC2(ctx, 1, 1);		/* 000007ff BLOCKDIM_X */
	FUNC2(ctx, 1, 1);		/* 000007ff BLOCKDIM_XMY */
	FUNC2(ctx, 1, 0);		/* 00000001 BLOCKDIM_XMY_OVERFLOW */
	FUNC2(ctx, 1, 1);		/* 0003ffff BLOCKDIM_XMYMZ */
	FUNC2(ctx, 1, 1);		/* 000007ff BLOCKDIM_Y */
	FUNC2(ctx, 1, 1);		/* 0000007f BLOCKDIM_Z */
	FUNC2(ctx, 1, 4);		/* 000000ff CP_REG_ALLOC_TEMP */
	FUNC2(ctx, 1, 1);		/* 00000001 BLOCKDIM_DIRTY */
	if (FUNC0(device->chipset))
		FUNC2(ctx, 1, 0);	/* 00000003 UNK03E8 */
	FUNC2(ctx, 1, 1);		/* 0000007f BLOCK_ALLOC_HALFWARPS */
	FUNC2(ctx, 1, 1);		/* 00000007 LOCAL_WARPS_NO_CLAMP */
	FUNC2(ctx, 1, 7);		/* 00000007 LOCAL_WARPS_LOG_ALLOC */
	FUNC2(ctx, 1, 1);		/* 00000007 STACK_WARPS_NO_CLAMP */
	FUNC2(ctx, 1, 7);		/* 00000007 STACK_WARPS_LOG_ALLOC */
	FUNC2(ctx, 1, 1);		/* 00001fff BLOCK_ALLOC_REGSLOTS_PACKED */
	FUNC2(ctx, 1, 1);		/* 00001fff BLOCK_ALLOC_REGSLOTS_STRIDED */
	FUNC2(ctx, 1, 1);		/* 000007ff BLOCK_ALLOC_THREADS */

	/* compat 2d state */
	if (device->chipset == 0x50) {
		FUNC2(ctx, 4, 0);		/* 0000ffff clip X, Y, W, H */

		FUNC2(ctx, 1, 1);		/* ffffffff chroma COLOR_FORMAT */

		FUNC2(ctx, 1, 1);		/* ffffffff pattern COLOR_FORMAT */
		FUNC2(ctx, 1, 0);		/* ffffffff pattern SHAPE */
		FUNC2(ctx, 1, 1);		/* ffffffff pattern PATTERN_SELECT */

		FUNC2(ctx, 1, 0xa);		/* ffffffff surf2d SRC_FORMAT */
		FUNC2(ctx, 1, 0);		/* ffffffff surf2d DMA_SRC */
		FUNC2(ctx, 1, 0);		/* 000000ff surf2d SRC_ADDRESS_HIGH */
		FUNC2(ctx, 1, 0);		/* ffffffff surf2d SRC_ADDRESS_LOW */
		FUNC2(ctx, 1, 0x40);		/* 0000ffff surf2d SRC_PITCH */
		FUNC2(ctx, 1, 0);		/* 0000000f surf2d SRC_TILE_MODE_Z */
		FUNC2(ctx, 1, 2);		/* 0000000f surf2d SRC_TILE_MODE_Y */
		FUNC2(ctx, 1, 0x100);		/* ffffffff surf2d SRC_HEIGHT */
		FUNC2(ctx, 1, 1);		/* 00000001 surf2d SRC_LINEAR */
		FUNC2(ctx, 1, 0x100);		/* ffffffff surf2d SRC_WIDTH */

		FUNC2(ctx, 1, 0);		/* 0000ffff gdirect CLIP_B_X */
		FUNC2(ctx, 1, 0);		/* 0000ffff gdirect CLIP_B_Y */
		FUNC2(ctx, 1, 0);		/* 0000ffff gdirect CLIP_C_X */
		FUNC2(ctx, 1, 0);		/* 0000ffff gdirect CLIP_C_Y */
		FUNC2(ctx, 1, 0);		/* 0000ffff gdirect CLIP_D_X */
		FUNC2(ctx, 1, 0);		/* 0000ffff gdirect CLIP_D_Y */
		FUNC2(ctx, 1, 1);		/* ffffffff gdirect COLOR_FORMAT */
		FUNC2(ctx, 1, 0);		/* ffffffff gdirect OPERATION */
		FUNC2(ctx, 1, 0);		/* 0000ffff gdirect POINT_X */
		FUNC2(ctx, 1, 0);		/* 0000ffff gdirect POINT_Y */

		FUNC2(ctx, 1, 0);		/* 0000ffff blit SRC_Y */
		FUNC2(ctx, 1, 0);		/* ffffffff blit OPERATION */

		FUNC2(ctx, 1, 0);		/* ffffffff ifc OPERATION */

		FUNC2(ctx, 1, 0);		/* ffffffff iifc INDEX_FORMAT */
		FUNC2(ctx, 1, 0);		/* ffffffff iifc LUT_OFFSET */
		FUNC2(ctx, 1, 4);		/* ffffffff iifc COLOR_FORMAT */
		FUNC2(ctx, 1, 0);		/* ffffffff iifc OPERATION */
	}

	/* m2mf state */
	FUNC2(ctx, 1, 0);		/* ffffffff m2mf LINE_COUNT */
	FUNC2(ctx, 1, 0);		/* ffffffff m2mf LINE_LENGTH_IN */
	FUNC2(ctx, 2, 0);		/* ffffffff m2mf OFFSET_IN, OFFSET_OUT */
	FUNC2(ctx, 1, 1);		/* ffffffff m2mf TILING_DEPTH_OUT */
	FUNC2(ctx, 1, 0x100);		/* ffffffff m2mf TILING_HEIGHT_OUT */
	FUNC2(ctx, 1, 0);		/* ffffffff m2mf TILING_POSITION_OUT_Z */
	FUNC2(ctx, 1, 1);		/* 00000001 m2mf LINEAR_OUT */
	FUNC2(ctx, 2, 0);		/* 0000ffff m2mf TILING_POSITION_OUT_X, Y */
	FUNC2(ctx, 1, 0x100);		/* ffffffff m2mf TILING_PITCH_OUT */
	FUNC2(ctx, 1, 1);		/* ffffffff m2mf TILING_DEPTH_IN */
	FUNC2(ctx, 1, 0x100);		/* ffffffff m2mf TILING_HEIGHT_IN */
	FUNC2(ctx, 1, 0);		/* ffffffff m2mf TILING_POSITION_IN_Z */
	FUNC2(ctx, 1, 1);		/* 00000001 m2mf LINEAR_IN */
	FUNC2(ctx, 2, 0);		/* 0000ffff m2mf TILING_POSITION_IN_X, Y */
	FUNC2(ctx, 1, 0x100);		/* ffffffff m2mf TILING_PITCH_IN */

	/* more compat 2d state */
	if (device->chipset == 0x50) {
		FUNC2(ctx, 1, 1);		/* ffffffff line COLOR_FORMAT */
		FUNC2(ctx, 1, 0);		/* ffffffff line OPERATION */

		FUNC2(ctx, 1, 1);		/* ffffffff triangle COLOR_FORMAT */
		FUNC2(ctx, 1, 0);		/* ffffffff triangle OPERATION */

		FUNC2(ctx, 1, 0);		/* 0000000f sifm TILE_MODE_Z */
		FUNC2(ctx, 1, 2);		/* 0000000f sifm TILE_MODE_Y */
		FUNC2(ctx, 1, 0);		/* 000000ff sifm FORMAT_FILTER */
		FUNC2(ctx, 1, 1);		/* 000000ff sifm FORMAT_ORIGIN */
		FUNC2(ctx, 1, 0);		/* 0000ffff sifm SRC_PITCH */
		FUNC2(ctx, 1, 1);		/* 00000001 sifm SRC_LINEAR */
		FUNC2(ctx, 1, 0);		/* 000000ff sifm SRC_OFFSET_HIGH */
		FUNC2(ctx, 1, 0);		/* ffffffff sifm SRC_OFFSET */
		FUNC2(ctx, 1, 0);		/* 0000ffff sifm SRC_HEIGHT */
		FUNC2(ctx, 1, 0);		/* 0000ffff sifm SRC_WIDTH */
		FUNC2(ctx, 1, 3);		/* ffffffff sifm COLOR_FORMAT */
		FUNC2(ctx, 1, 0);		/* ffffffff sifm OPERATION */

		FUNC2(ctx, 1, 0);		/* ffffffff sifc OPERATION */
	}

	/* tesla state */
	FUNC2(ctx, 1, 0);		/* 0000000f GP_TEXTURES_LOG2 */
	FUNC2(ctx, 1, 0);		/* 0000000f GP_SAMPLERS_LOG2 */
	FUNC2(ctx, 1, 0);		/* 000000ff */
	FUNC2(ctx, 1, 0);		/* ffffffff */
	FUNC2(ctx, 1, 4);		/* 000000ff UNK12B0_0 */
	FUNC2(ctx, 1, 0x70);		/* 000000ff UNK12B0_1 */
	FUNC2(ctx, 1, 0x80);		/* 000000ff UNK12B0_3 */
	FUNC2(ctx, 1, 0);		/* 000000ff UNK12B0_2 */
	FUNC2(ctx, 1, 0);		/* 0000000f FP_TEXTURES_LOG2 */
	FUNC2(ctx, 1, 0);		/* 0000000f FP_SAMPLERS_LOG2 */
	if (FUNC0(device->chipset)) {
		FUNC2(ctx, 1, 0);	/* ffffffff */
		FUNC2(ctx, 1, 0);	/* 0000007f MULTISAMPLE_SAMPLES_LOG2 */
	} else {
		FUNC2(ctx, 1, 0);	/* 0000000f MULTISAMPLE_SAMPLES_LOG2 */
	}
	FUNC2(ctx, 1, 0xc);		/* 000000ff SEMANTIC_COLOR.BFC0_ID */
	if (device->chipset != 0x50)
		FUNC2(ctx, 1, 0);	/* 00000001 SEMANTIC_COLOR.CLMP_EN */
	FUNC2(ctx, 1, 8);		/* 000000ff SEMANTIC_COLOR.COLR_NR */
	FUNC2(ctx, 1, 0x14);		/* 000000ff SEMANTIC_COLOR.FFC0_ID */
	if (device->chipset == 0x50) {
		FUNC2(ctx, 1, 0);	/* 000000ff SEMANTIC_LAYER */
		FUNC2(ctx, 1, 0);	/* 00000001 */
	} else {
		FUNC2(ctx, 1, 0);	/* 00000001 SEMANTIC_PTSZ.ENABLE */
		FUNC2(ctx, 1, 0x29);	/* 000000ff SEMANTIC_PTSZ.PTSZ_ID */
		FUNC2(ctx, 1, 0x27);	/* 000000ff SEMANTIC_PRIM */
		FUNC2(ctx, 1, 0x26);	/* 000000ff SEMANTIC_LAYER */
		FUNC2(ctx, 1, 8);	/* 0000000f SMENATIC_CLIP.CLIP_HIGH */
		FUNC2(ctx, 1, 4);	/* 000000ff SEMANTIC_CLIP.CLIP_LO */
		FUNC2(ctx, 1, 0x27);	/* 000000ff UNK0FD4 */
		FUNC2(ctx, 1, 0);	/* 00000001 UNK1900 */
	}
	FUNC2(ctx, 1, 0);		/* 00000007 RT_CONTROL_MAP0 */
	FUNC2(ctx, 1, 1);		/* 00000007 RT_CONTROL_MAP1 */
	FUNC2(ctx, 1, 2);		/* 00000007 RT_CONTROL_MAP2 */
	FUNC2(ctx, 1, 3);		/* 00000007 RT_CONTROL_MAP3 */
	FUNC2(ctx, 1, 4);		/* 00000007 RT_CONTROL_MAP4 */
	FUNC2(ctx, 1, 5);		/* 00000007 RT_CONTROL_MAP5 */
	FUNC2(ctx, 1, 6);		/* 00000007 RT_CONTROL_MAP6 */
	FUNC2(ctx, 1, 7);		/* 00000007 RT_CONTROL_MAP7 */
	FUNC2(ctx, 1, 1);		/* 0000000f RT_CONTROL_COUNT */
	FUNC2(ctx, 8, 0);		/* 00000001 RT_HORIZ_UNK */
	FUNC2(ctx, 8, 0);		/* ffffffff RT_ADDRESS_LOW */
	FUNC2(ctx, 1, 0xcf);		/* 000000ff RT_FORMAT */
	FUNC2(ctx, 7, 0);		/* 000000ff RT_FORMAT */
	if (device->chipset != 0x50)
		FUNC2(ctx, 3, 0);	/* 1, 1, 1 */
	else
		FUNC2(ctx, 2, 0);	/* 1, 1 */
	FUNC2(ctx, 1, 0);		/* ffffffff GP_ENABLE */
	FUNC2(ctx, 1, 0x80);		/* 0000ffff GP_VERTEX_OUTPUT_COUNT*/
	FUNC2(ctx, 1, 4);		/* 000000ff GP_REG_ALLOC_RESULT */
	FUNC2(ctx, 1, 4);		/* 000000ff GP_RESULT_MAP_SIZE */
	if (FUNC0(device->chipset)) {
		FUNC2(ctx, 1, 3);	/* 00000003 */
		FUNC2(ctx, 1, 0);	/* 00000001 UNK1418. Alone. */
	}
	if (device->chipset != 0x50)
		FUNC2(ctx, 1, 3);	/* 00000003 UNK15AC */
	FUNC2(ctx, 1, 1);		/* ffffffff RASTERIZE_ENABLE */
	FUNC2(ctx, 1, 0);		/* 00000001 FP_CONTROL.EXPORTS_Z */
	if (device->chipset != 0x50)
		FUNC2(ctx, 1, 0);	/* 00000001 FP_CONTROL.MULTIPLE_RESULTS */
	FUNC2(ctx, 1, 0x12);		/* 000000ff FP_INTERPOLANT_CTRL.COUNT */
	FUNC2(ctx, 1, 0x10);		/* 000000ff FP_INTERPOLANT_CTRL.COUNT_NONFLAT */
	FUNC2(ctx, 1, 0xc);		/* 000000ff FP_INTERPOLANT_CTRL.OFFSET */
	FUNC2(ctx, 1, 1);		/* 00000001 FP_INTERPOLANT_CTRL.UMASK.W */
	FUNC2(ctx, 1, 0);		/* 00000001 FP_INTERPOLANT_CTRL.UMASK.X */
	FUNC2(ctx, 1, 0);		/* 00000001 FP_INTERPOLANT_CTRL.UMASK.Y */
	FUNC2(ctx, 1, 0);		/* 00000001 FP_INTERPOLANT_CTRL.UMASK.Z */
	FUNC2(ctx, 1, 4);		/* 000000ff FP_RESULT_COUNT */
	FUNC2(ctx, 1, 2);		/* ffffffff REG_MODE */
	FUNC2(ctx, 1, 4);		/* 000000ff FP_REG_ALLOC_TEMP */
	if (device->chipset >= 0xa0)
		FUNC2(ctx, 1, 0);	/* ffffffff */
	FUNC2(ctx, 1, 0);		/* 00000001 GP_BUILTIN_RESULT_EN.LAYER_IDX */
	FUNC2(ctx, 1, 0);		/* ffffffff STRMOUT_ENABLE */
	FUNC2(ctx, 1, 0x3fffff);	/* 003fffff TIC_LIMIT */
	FUNC2(ctx, 1, 0x1fff);	/* 000fffff TSC_LIMIT */
	FUNC2(ctx, 1, 0);		/* 00000001 VERTEX_TWO_SIDE_ENABLE*/
	if (device->chipset != 0x50)
		FUNC2(ctx, 8, 0);	/* 00000001 */
	if (device->chipset >= 0xa0) {
		FUNC2(ctx, 1, 1);	/* 00000007 VTX_ATTR_DEFINE.COMP */
		FUNC2(ctx, 1, 1);	/* 00000007 VTX_ATTR_DEFINE.SIZE */
		FUNC2(ctx, 1, 2);	/* 00000007 VTX_ATTR_DEFINE.TYPE */
		FUNC2(ctx, 1, 0);	/* 000000ff VTX_ATTR_DEFINE.ATTR */
	}
	FUNC2(ctx, 1, 4);		/* 0000007f VP_RESULT_MAP_SIZE */
	FUNC2(ctx, 1, 0x14);		/* 0000001f ZETA_FORMAT */
	FUNC2(ctx, 1, 1);		/* 00000001 ZETA_ENABLE */
	FUNC2(ctx, 1, 0);		/* 0000000f VP_TEXTURES_LOG2 */
	FUNC2(ctx, 1, 0);		/* 0000000f VP_SAMPLERS_LOG2 */
	if (FUNC0(device->chipset))
		FUNC2(ctx, 1, 0);	/* 00000001 */
	FUNC2(ctx, 1, 2);		/* 00000003 POLYGON_MODE_BACK */
	if (device->chipset >= 0xa0)
		FUNC2(ctx, 1, 0);	/* 00000003 VTX_ATTR_DEFINE.SIZE - 1 */
	FUNC2(ctx, 1, 0);		/* 0000ffff CB_ADDR_INDEX */
	if (device->chipset >= 0xa0)
		FUNC2(ctx, 1, 0);	/* 00000003 */
	FUNC2(ctx, 1, 0);		/* 00000001 CULL_FACE_ENABLE */
	FUNC2(ctx, 1, 1);		/* 00000003 CULL_FACE */
	FUNC2(ctx, 1, 0);		/* 00000001 FRONT_FACE */
	FUNC2(ctx, 1, 2);		/* 00000003 POLYGON_MODE_FRONT */
	FUNC2(ctx, 1, 0x1000);	/* 00007fff UNK141C */
	if (device->chipset != 0x50) {
		FUNC2(ctx, 1, 0xe00);		/* 7fff */
		FUNC2(ctx, 1, 0x1000);	/* 7fff */
		FUNC2(ctx, 1, 0x1e00);	/* 7fff */
	}
	FUNC2(ctx, 1, 0);		/* 00000001 BEGIN_END_ACTIVE */
	FUNC2(ctx, 1, 1);		/* 00000001 POLYGON_MODE_??? */
	FUNC2(ctx, 1, 1);		/* 000000ff GP_REG_ALLOC_TEMP / 4 rounded up */
	FUNC2(ctx, 1, 1);		/* 000000ff FP_REG_ALLOC_TEMP... without /4? */
	FUNC2(ctx, 1, 1);		/* 000000ff VP_REG_ALLOC_TEMP / 4 rounded up */
	FUNC2(ctx, 1, 1);		/* 00000001 */
	FUNC2(ctx, 1, 0);		/* 00000001 */
	FUNC2(ctx, 1, 0);		/* 00000001 VTX_ATTR_MASK_UNK0 nonempty */
	FUNC2(ctx, 1, 0);		/* 00000001 VTX_ATTR_MASK_UNK1 nonempty */
	FUNC2(ctx, 1, 0x200);		/* 0003ffff GP_VERTEX_OUTPUT_COUNT*GP_REG_ALLOC_RESULT */
	if (FUNC0(device->chipset))
		FUNC2(ctx, 1, 0x200);
	FUNC2(ctx, 1, 0);		/* 00000001 */
	if (device->chipset < 0xa0) {
		FUNC2(ctx, 1, 1);	/* 00000001 */
		FUNC2(ctx, 1, 0x70);	/* 000000ff */
		FUNC2(ctx, 1, 0x80);	/* 000000ff */
		FUNC2(ctx, 1, 0);	/* 000000ff */
		FUNC2(ctx, 1, 0);	/* 00000001 */
		FUNC2(ctx, 1, 1);	/* 00000001 */
		FUNC2(ctx, 1, 0x70);	/* 000000ff */
		FUNC2(ctx, 1, 0x80);	/* 000000ff */
		FUNC2(ctx, 1, 0);	/* 000000ff */
	} else {
		FUNC2(ctx, 1, 1);	/* 00000001 */
		FUNC2(ctx, 1, 0xf0);	/* 000000ff */
		FUNC2(ctx, 1, 0xff);	/* 000000ff */
		FUNC2(ctx, 1, 0);	/* 000000ff */
		FUNC2(ctx, 1, 0);	/* 00000001 */
		FUNC2(ctx, 1, 1);	/* 00000001 */
		FUNC2(ctx, 1, 0xf0);	/* 000000ff */
		FUNC2(ctx, 1, 0xff);	/* 000000ff */
		FUNC2(ctx, 1, 0);	/* 000000ff */
		FUNC2(ctx, 1, 9);	/* 0000003f UNK114C.COMP,SIZE */
	}

	/* eng2d state */
	FUNC2(ctx, 1, 0);		/* 00000001 eng2d COLOR_KEY_ENABLE */
	FUNC2(ctx, 1, 0);		/* 00000007 eng2d COLOR_KEY_FORMAT */
	FUNC2(ctx, 1, 1);		/* ffffffff eng2d DST_DEPTH */
	FUNC2(ctx, 1, 0xcf);		/* 000000ff eng2d DST_FORMAT */
	FUNC2(ctx, 1, 0);		/* ffffffff eng2d DST_LAYER */
	FUNC2(ctx, 1, 1);		/* 00000001 eng2d DST_LINEAR */
	FUNC2(ctx, 1, 0);		/* 00000007 eng2d PATTERN_COLOR_FORMAT */
	FUNC2(ctx, 1, 0);		/* 00000007 eng2d OPERATION */
	FUNC2(ctx, 1, 0);		/* 00000003 eng2d PATTERN_SELECT */
	FUNC2(ctx, 1, 0xcf);		/* 000000ff eng2d SIFC_FORMAT */
	FUNC2(ctx, 1, 0);		/* 00000001 eng2d SIFC_BITMAP_ENABLE */
	FUNC2(ctx, 1, 2);		/* 00000003 eng2d SIFC_BITMAP_UNK808 */
	FUNC2(ctx, 1, 0);		/* ffffffff eng2d BLIT_DU_DX_FRACT */
	FUNC2(ctx, 1, 1);		/* ffffffff eng2d BLIT_DU_DX_INT */
	FUNC2(ctx, 1, 0);		/* ffffffff eng2d BLIT_DV_DY_FRACT */
	FUNC2(ctx, 1, 1);		/* ffffffff eng2d BLIT_DV_DY_INT */
	FUNC2(ctx, 1, 0);		/* 00000001 eng2d BLIT_CONTROL_FILTER */
	FUNC2(ctx, 1, 0xcf);		/* 000000ff eng2d DRAW_COLOR_FORMAT */
	FUNC2(ctx, 1, 0xcf);		/* 000000ff eng2d SRC_FORMAT */
	FUNC2(ctx, 1, 1);		/* 00000001 eng2d SRC_LINEAR #2 */

	num = ctx->ctxvals_pos - base;
	ctx->ctxvals_pos = base;
	if (FUNC0(device->chipset))
		FUNC1(ctx, 0x404800, num);
	else
		FUNC1(ctx, 0x405400, num);
}