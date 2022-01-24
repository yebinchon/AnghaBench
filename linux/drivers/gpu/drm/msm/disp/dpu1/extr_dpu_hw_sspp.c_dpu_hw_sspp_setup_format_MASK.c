#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct dpu_hw_blk_reg_map {int dummy; } ;
struct dpu_hw_pipe {TYPE_4__* cap; TYPE_3__* mdp; TYPE_2__* catalog; struct dpu_hw_blk_reg_map hw; } ;
struct dpu_format {int chroma_sample; int fetch_planes; int* bits; int* element; int unpack_count; int unpack_tight; int unpack_align_msb; int bpp; int fetch_mode; scalar_t__ alpha_enable; } ;
typedef  enum dpu_sspp_multirect_index { ____Placeholder_dpu_sspp_multirect_index } dpu_sspp_multirect_index ;
struct TYPE_8__ {int /*<<< orphan*/  features; } ;
struct TYPE_7__ {int highest_bank_bit; int ubwc_swizzle; } ;
struct TYPE_6__ {TYPE_1__* caps; } ;
struct TYPE_5__ {int /*<<< orphan*/  ubwc_version; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 size_t C0_G_Y ; 
 size_t C1_B_Cb ; 
 size_t C2_R_Cr ; 
 size_t C3_ALPHA ; 
 int DPU_CHROMA_H1V2 ; 
 int DPU_CHROMA_H2V1 ; 
 int DPU_FETCH_CONFIG_RESET_VALUE ; 
 int DPU_FETCH_LINEAR ; 
 scalar_t__ FUNC1 (struct dpu_format const*) ; 
 scalar_t__ FUNC2 (struct dpu_format const*) ; 
 scalar_t__ FUNC3 (struct dpu_format const*) ; 
 int DPU_PLANE_INTERLEAVED ; 
 int FUNC4 (struct dpu_hw_blk_reg_map*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dpu_hw_blk_reg_map*,int,int) ; 
 int /*<<< orphan*/  DPU_SSPP_CSC ; 
 int /*<<< orphan*/  DPU_SSPP_CSC_10BIT ; 
 int DPU_SSPP_FLIP_LR ; 
 int DPU_SSPP_FLIP_UD ; 
 int DPU_SSPP_RECT_0 ; 
 int DPU_SSPP_RECT_SOLO ; 
 int DPU_SSPP_ROT_90 ; 
 int DPU_SSPP_SOLID_FILL ; 
 int DPU_SSPP_SOURCE_ROTATED_90 ; 
 int /*<<< orphan*/  DPU_SSPP_SRC ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int MDSS_MDP_OP_BWC_EN ; 
 int MDSS_MDP_OP_FLIP_LR ; 
 int MDSS_MDP_OP_FLIP_UD ; 
 int MDSS_MDP_OP_PE_OVERRIDE ; 
 int SSPP_FETCH_CONFIG ; 
 int SSPP_SRC_FORMAT ; 
 int SSPP_SRC_FORMAT_REC1 ; 
 int SSPP_SRC_OP_MODE ; 
 int SSPP_SRC_OP_MODE_REC1 ; 
 int SSPP_SRC_UNPACK_PATTERN ; 
 int SSPP_SRC_UNPACK_PATTERN_REC1 ; 
 int SSPP_UBWC_ERROR_STATUS ; 
 int SSPP_UBWC_STATIC_CTRL ; 
 int VIG_CSC_10_EN ; 
 int VIG_CSC_10_SRC_DATAFMT ; 
 int VIG_OP_CSC_EN ; 
 int VIG_OP_CSC_SRC_DATAFMT ; 
 int /*<<< orphan*/  FUNC7 (struct dpu_hw_pipe*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct dpu_hw_pipe*,int,scalar_t__) ; 
 scalar_t__ FUNC9 (struct dpu_hw_pipe*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct dpu_hw_pipe *ctx,
		const struct dpu_format *fmt, u32 flags,
		enum dpu_sspp_multirect_index rect_mode)
{
	struct dpu_hw_blk_reg_map *c;
	u32 chroma_samp, unpack, src_format;
	u32 opmode = 0;
	u32 fast_clear = 0;
	u32 op_mode_off, unpack_pat_off, format_off;
	u32 idx;

	if (FUNC9(ctx, DPU_SSPP_SRC, &idx) || !fmt)
		return;

	if (rect_mode == DPU_SSPP_RECT_SOLO || rect_mode == DPU_SSPP_RECT_0) {
		op_mode_off = SSPP_SRC_OP_MODE;
		unpack_pat_off = SSPP_SRC_UNPACK_PATTERN;
		format_off = SSPP_SRC_FORMAT;
	} else {
		op_mode_off = SSPP_SRC_OP_MODE_REC1;
		unpack_pat_off = SSPP_SRC_UNPACK_PATTERN_REC1;
		format_off = SSPP_SRC_FORMAT_REC1;
	}

	c = &ctx->hw;
	opmode = FUNC4(c, op_mode_off + idx);
	opmode &= ~(MDSS_MDP_OP_FLIP_LR | MDSS_MDP_OP_FLIP_UD |
			MDSS_MDP_OP_BWC_EN | MDSS_MDP_OP_PE_OVERRIDE);

	if (flags & DPU_SSPP_FLIP_LR)
		opmode |= MDSS_MDP_OP_FLIP_LR;
	if (flags & DPU_SSPP_FLIP_UD)
		opmode |= MDSS_MDP_OP_FLIP_UD;

	chroma_samp = fmt->chroma_sample;
	if (flags & DPU_SSPP_SOURCE_ROTATED_90) {
		if (chroma_samp == DPU_CHROMA_H2V1)
			chroma_samp = DPU_CHROMA_H1V2;
		else if (chroma_samp == DPU_CHROMA_H1V2)
			chroma_samp = DPU_CHROMA_H2V1;
	}

	src_format = (chroma_samp << 23) | (fmt->fetch_planes << 19) |
		(fmt->bits[C3_ALPHA] << 6) | (fmt->bits[C2_R_Cr] << 4) |
		(fmt->bits[C1_B_Cb] << 2) | (fmt->bits[C0_G_Y] << 0);

	if (flags & DPU_SSPP_ROT_90)
		src_format |= FUNC0(11); /* ROT90 */

	if (fmt->alpha_enable && fmt->fetch_planes == DPU_PLANE_INTERLEAVED)
		src_format |= FUNC0(8); /* SRCC3_EN */

	if (flags & DPU_SSPP_SOLID_FILL)
		src_format |= FUNC0(22);

	unpack = (fmt->element[3] << 24) | (fmt->element[2] << 16) |
		(fmt->element[1] << 8) | (fmt->element[0] << 0);
	src_format |= ((fmt->unpack_count - 1) << 12) |
		(fmt->unpack_tight << 17) |
		(fmt->unpack_align_msb << 18) |
		((fmt->bpp - 1) << 9);

	if (fmt->fetch_mode != DPU_FETCH_LINEAR) {
		if (FUNC2(fmt))
			opmode |= MDSS_MDP_OP_BWC_EN;
		src_format |= (fmt->fetch_mode & 3) << 30; /*FRAME_FORMAT */
		FUNC5(c, SSPP_FETCH_CONFIG,
			DPU_FETCH_CONFIG_RESET_VALUE |
			ctx->mdp->highest_bank_bit << 18);
		if (FUNC6(ctx->catalog->caps->ubwc_version)) {
			fast_clear = fmt->alpha_enable ? FUNC0(31) : 0;
			FUNC5(c, SSPP_UBWC_STATIC_CTRL,
					fast_clear | (ctx->mdp->ubwc_swizzle) |
					(ctx->mdp->highest_bank_bit << 4));
		}
	}

	opmode |= MDSS_MDP_OP_PE_OVERRIDE;

	/* if this is YUV pixel format, enable CSC */
	if (FUNC3(fmt))
		src_format |= FUNC0(15);

	if (FUNC1(fmt))
		src_format |= FUNC0(14);

	/* update scaler opmode, if appropriate */
	if (FUNC10(DPU_SSPP_CSC, &ctx->cap->features))
		FUNC8(ctx, VIG_OP_CSC_EN | VIG_OP_CSC_SRC_DATAFMT,
			FUNC3(fmt));
	else if (FUNC10(DPU_SSPP_CSC_10BIT, &ctx->cap->features))
		FUNC7(ctx,
			VIG_CSC_10_EN | VIG_CSC_10_SRC_DATAFMT,
			FUNC3(fmt));

	FUNC5(c, format_off + idx, src_format);
	FUNC5(c, unpack_pat_off + idx, unpack);
	FUNC5(c, op_mode_off + idx, opmode);

	/* clear previous UBWC error */
	FUNC5(c, SSPP_UBWC_ERROR_STATUS + idx, FUNC0(31));
}