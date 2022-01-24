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
struct pixel_ext {int /*<<< orphan*/  bottom; int /*<<< orphan*/  top; int /*<<< orphan*/  right; int /*<<< orphan*/  left; } ;
struct phase_step {int* x; int* y; } ;
struct mdp_format {int alpha_enable; int unpack_tight; int /*<<< orphan*/ * unpack; int /*<<< orphan*/  chroma_sample; int /*<<< orphan*/  fetch_type; scalar_t__ unpack_count; scalar_t__ cpp; int /*<<< orphan*/  bpc_b; int /*<<< orphan*/  bpc_g; int /*<<< orphan*/  bpc_r; int /*<<< orphan*/  bpc_a; } ;
struct mdp5_kms {int dummy; } ;
struct mdp5_hw_pipe {int pipe; int caps; } ;
struct drm_framebuffer {int dummy; } ;
typedef  enum mdp5_pipe { ____Placeholder_mdp5_pipe } mdp5_pipe ;

/* Variables and functions */
 int /*<<< orphan*/  BWC_LOSSLESS ; 
 size_t COMP_0 ; 
 size_t COMP_1_2 ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CSC_YUV2RGB ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (unsigned int) ; 
 int FUNC4 (unsigned int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  MDP5_PIPE_SRC_FORMAT_ALPHA_ENABLE ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (scalar_t__) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  MDP5_PIPE_SRC_FORMAT_UNPACK_TIGHT ; 
 int FUNC15 (int) ; 
 int FUNC16 (int) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int MDP5_PIPE_SRC_OP_MODE_FLIP_LR ; 
 int MDP5_PIPE_SRC_OP_MODE_FLIP_UD ; 
 int /*<<< orphan*/  MDP5_PIPE_SRC_OP_MODE_SW_PIX_EXT_OVERRIDE ; 
 int FUNC18 (int) ; 
 int FUNC19 (int) ; 
 int FUNC20 (int /*<<< orphan*/ ) ; 
 int FUNC21 (int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ ) ; 
 int FUNC24 (int) ; 
 int FUNC25 (int) ; 
 scalar_t__ FUNC26 (struct mdp_format const*) ; 
 int MDP_PIPE_CAP_CSC ; 
 int MDP_PIPE_CAP_SCALE ; 
 int MDP_PIPE_CAP_SW_PIX_EXT ; 
 int /*<<< orphan*/  FUNC27 (int) ; 
 int /*<<< orphan*/  FUNC28 (int) ; 
 int /*<<< orphan*/  FUNC29 (int) ; 
 int /*<<< orphan*/  FUNC30 (int) ; 
 int /*<<< orphan*/  FUNC31 (int) ; 
 int /*<<< orphan*/  FUNC32 (int) ; 
 int /*<<< orphan*/  FUNC33 (int) ; 
 int /*<<< orphan*/  FUNC34 (int) ; 
 int /*<<< orphan*/  FUNC35 (int) ; 
 int /*<<< orphan*/  FUNC36 (int) ; 
 int /*<<< orphan*/  FUNC37 (int) ; 
 int /*<<< orphan*/  FUNC38 (int) ; 
 int /*<<< orphan*/  FUNC39 (int) ; 
 int /*<<< orphan*/  FUNC40 (int) ; 
 int /*<<< orphan*/  FUNC41 (int) ; 
 int /*<<< orphan*/  FUNC42 (struct mdp5_kms*,int) ; 
 int /*<<< orphan*/  FUNC43 (struct mdp5_kms*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC44 (struct mdp5_kms*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC45 (struct mdp5_kms*,int,struct mdp_format const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC46 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC47 (struct drm_framebuffer*) ; 
 int /*<<< orphan*/  FUNC48 (struct mdp5_kms*,int,struct drm_framebuffer*) ; 
 struct mdp_format* FUNC49 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC50(struct mdp5_kms *mdp5_kms,
				 struct mdp5_hw_pipe *hwpipe,
				 struct drm_framebuffer *fb,
				 struct phase_step *step,
				 struct pixel_ext *pe,
				 u32 scale_config, u32 hdecm, u32 vdecm,
				 bool hflip, bool vflip,
				 int crtc_x, int crtc_y,
				 unsigned int crtc_w, unsigned int crtc_h,
				 u32 src_img_w, u32 src_img_h,
				 u32 src_x, u32 src_y,
				 u32 src_w, u32 src_h)
{
	enum mdp5_pipe pipe = hwpipe->pipe;
	bool has_pe = hwpipe->caps & MDP_PIPE_CAP_SW_PIX_EXT;
	const struct mdp_format *format =
			FUNC49(FUNC47(fb));

	FUNC44(mdp5_kms, FUNC37(pipe),
			FUNC16(src_img_w) |
			FUNC15(src_img_h));

	FUNC44(mdp5_kms, FUNC39(pipe),
			FUNC19(src_w) |
			FUNC18(src_h));

	FUNC44(mdp5_kms, FUNC41(pipe),
			FUNC24(src_x) |
			FUNC25(src_y));

	FUNC44(mdp5_kms, FUNC28(pipe),
			FUNC4(crtc_w) |
			FUNC3(crtc_h));

	FUNC44(mdp5_kms, FUNC29(pipe),
			FUNC5(crtc_x) |
			FUNC6(crtc_y));

	FUNC44(mdp5_kms, FUNC36(pipe),
			FUNC7(format->bpc_a) |
			FUNC13(format->bpc_r) |
			FUNC12(format->bpc_g) |
			FUNC8(format->bpc_b) |
			FUNC0(format->alpha_enable, MDP5_PIPE_SRC_FORMAT_ALPHA_ENABLE) |
			FUNC10(format->cpp - 1) |
			FUNC14(format->unpack_count - 1) |
			FUNC0(format->unpack_tight, MDP5_PIPE_SRC_FORMAT_UNPACK_TIGHT) |
			FUNC11(format->fetch_type) |
			FUNC9(format->chroma_sample));

	FUNC44(mdp5_kms, FUNC40(pipe),
			FUNC20(format->unpack[0]) |
			FUNC21(format->unpack[1]) |
			FUNC22(format->unpack[2]) |
			FUNC23(format->unpack[3]));

	FUNC44(mdp5_kms, FUNC38(pipe),
			(hflip ? MDP5_PIPE_SRC_OP_MODE_FLIP_LR : 0) |
			(vflip ? MDP5_PIPE_SRC_OP_MODE_FLIP_UD : 0) |
			FUNC0(has_pe, MDP5_PIPE_SRC_OP_MODE_SW_PIX_EXT_OVERRIDE) |
			FUNC17(BWC_LOSSLESS));

	/* not using secure mode: */
	FUNC44(mdp5_kms, FUNC35(pipe), 0);

	if (hwpipe->caps & MDP_PIPE_CAP_SW_PIX_EXT)
		FUNC45(mdp5_kms, pipe, format,
				src_w, pe->left, pe->right,
				src_h, pe->top, pe->bottom);

	if (hwpipe->caps & MDP_PIPE_CAP_SCALE) {
		FUNC44(mdp5_kms, FUNC33(pipe),
				step->x[COMP_0]);
		FUNC44(mdp5_kms, FUNC34(pipe),
				step->y[COMP_0]);
		FUNC44(mdp5_kms, FUNC31(pipe),
				step->x[COMP_1_2]);
		FUNC44(mdp5_kms, FUNC32(pipe),
				step->y[COMP_1_2]);
		FUNC44(mdp5_kms, FUNC27(pipe),
				FUNC2(vdecm) |
				FUNC1(hdecm));
		FUNC44(mdp5_kms, FUNC30(pipe),
			   scale_config);
	}

	if (hwpipe->caps & MDP_PIPE_CAP_CSC) {
		if (FUNC26(format))
			FUNC43(mdp5_kms, pipe,
					FUNC46(CSC_YUV2RGB));
		else
			FUNC42(mdp5_kms, pipe);
	}

	FUNC48(mdp5_kms, pipe, fb);
}