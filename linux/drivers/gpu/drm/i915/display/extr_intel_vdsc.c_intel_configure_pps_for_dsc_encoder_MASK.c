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
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {TYPE_2__ base; } ;
struct TYPE_8__ {scalar_t__ dsc_split; } ;
struct drm_dsc_config {int dsc_version_minor; int bits_per_component; int line_buf_depth; int pic_height; int pic_width; int slice_height; int slice_width; int* rc_buf_thresh; TYPE_3__* rc_range_params; int /*<<< orphan*/  slice_chunk_size; int /*<<< orphan*/  rc_quant_incr_limit1; int /*<<< orphan*/  rc_quant_incr_limit0; int /*<<< orphan*/  initial_offset; int /*<<< orphan*/  final_offset; int /*<<< orphan*/  nfl_bpg_offset; int /*<<< orphan*/  slice_bpg_offset; int /*<<< orphan*/  flatness_max_qp; int /*<<< orphan*/  flatness_min_qp; int /*<<< orphan*/  first_line_bpg_offset; int /*<<< orphan*/  initial_scale_value; int /*<<< orphan*/  scale_decrement_interval; int /*<<< orphan*/  scale_increment_interval; int /*<<< orphan*/  initial_dec_delay; int /*<<< orphan*/  initial_xmit_delay; int /*<<< orphan*/  bits_per_pixel; scalar_t__ vbr_enable; scalar_t__ simple_422; scalar_t__ convert_rgb; scalar_t__ block_pred_enable; } ;
struct TYPE_5__ {int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {int cpu_transcoder; TYPE_4__ dsc_params; struct drm_dsc_config dp_dsc_cfg; TYPE_1__ base; } ;
struct intel_crtc {int pipe; } ;
struct drm_i915_private {int dummy; } ;
typedef  int /*<<< orphan*/  rc_range_params_dword ;
typedef  int /*<<< orphan*/  rc_buf_thresh_dword ;
typedef  enum transcoder { ____Placeholder_transcoder } transcoder ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_7__ {int range_bpg_offset; int range_max_qp; int range_min_qp; } ;

/* Variables and functions */
 int BITS_PER_BYTE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  DSCA_PICTURE_PARAMETER_SET_0 ; 
 int /*<<< orphan*/  DSCA_PICTURE_PARAMETER_SET_1 ; 
 int /*<<< orphan*/  DSCA_PICTURE_PARAMETER_SET_10 ; 
 int /*<<< orphan*/  DSCA_PICTURE_PARAMETER_SET_16 ; 
 int /*<<< orphan*/  DSCA_PICTURE_PARAMETER_SET_2 ; 
 int /*<<< orphan*/  DSCA_PICTURE_PARAMETER_SET_3 ; 
 int /*<<< orphan*/  DSCA_PICTURE_PARAMETER_SET_4 ; 
 int /*<<< orphan*/  DSCA_PICTURE_PARAMETER_SET_5 ; 
 int /*<<< orphan*/  DSCA_PICTURE_PARAMETER_SET_6 ; 
 int /*<<< orphan*/  DSCA_PICTURE_PARAMETER_SET_7 ; 
 int /*<<< orphan*/  DSCA_PICTURE_PARAMETER_SET_8 ; 
 int /*<<< orphan*/  DSCA_PICTURE_PARAMETER_SET_9 ; 
 int /*<<< orphan*/  DSCA_RC_BUF_THRESH_0 ; 
 int /*<<< orphan*/  DSCA_RC_BUF_THRESH_0_UDW ; 
 int /*<<< orphan*/  DSCA_RC_BUF_THRESH_1 ; 
 int /*<<< orphan*/  DSCA_RC_BUF_THRESH_1_UDW ; 
 int /*<<< orphan*/  DSCA_RC_RANGE_PARAMETERS_0 ; 
 int /*<<< orphan*/  DSCA_RC_RANGE_PARAMETERS_0_UDW ; 
 int /*<<< orphan*/  DSCA_RC_RANGE_PARAMETERS_1 ; 
 int /*<<< orphan*/  DSCA_RC_RANGE_PARAMETERS_1_UDW ; 
 int /*<<< orphan*/  DSCA_RC_RANGE_PARAMETERS_2 ; 
 int /*<<< orphan*/  DSCA_RC_RANGE_PARAMETERS_2_UDW ; 
 int /*<<< orphan*/  DSCA_RC_RANGE_PARAMETERS_3 ; 
 int /*<<< orphan*/  DSCA_RC_RANGE_PARAMETERS_3_UDW ; 
 int /*<<< orphan*/  DSCC_PICTURE_PARAMETER_SET_0 ; 
 int /*<<< orphan*/  DSCC_PICTURE_PARAMETER_SET_1 ; 
 int /*<<< orphan*/  DSCC_PICTURE_PARAMETER_SET_10 ; 
 int /*<<< orphan*/  DSCC_PICTURE_PARAMETER_SET_16 ; 
 int /*<<< orphan*/  DSCC_PICTURE_PARAMETER_SET_2 ; 
 int /*<<< orphan*/  DSCC_PICTURE_PARAMETER_SET_3 ; 
 int /*<<< orphan*/  DSCC_PICTURE_PARAMETER_SET_4 ; 
 int /*<<< orphan*/  DSCC_PICTURE_PARAMETER_SET_5 ; 
 int /*<<< orphan*/  DSCC_PICTURE_PARAMETER_SET_6 ; 
 int /*<<< orphan*/  DSCC_PICTURE_PARAMETER_SET_7 ; 
 int /*<<< orphan*/  DSCC_PICTURE_PARAMETER_SET_8 ; 
 int /*<<< orphan*/  DSCC_PICTURE_PARAMETER_SET_9 ; 
 int /*<<< orphan*/  DSCC_RC_BUF_THRESH_0 ; 
 int /*<<< orphan*/  DSCC_RC_BUF_THRESH_0_UDW ; 
 int /*<<< orphan*/  DSCC_RC_BUF_THRESH_1 ; 
 int /*<<< orphan*/  DSCC_RC_BUF_THRESH_1_UDW ; 
 int /*<<< orphan*/  DSCC_RC_RANGE_PARAMETERS_0 ; 
 int /*<<< orphan*/  DSCC_RC_RANGE_PARAMETERS_0_UDW ; 
 int /*<<< orphan*/  DSCC_RC_RANGE_PARAMETERS_1 ; 
 int /*<<< orphan*/  DSCC_RC_RANGE_PARAMETERS_1_UDW ; 
 int /*<<< orphan*/  DSCC_RC_RANGE_PARAMETERS_2 ; 
 int /*<<< orphan*/  DSCC_RC_RANGE_PARAMETERS_2_UDW ; 
 int /*<<< orphan*/  DSCC_RC_RANGE_PARAMETERS_3 ; 
 int /*<<< orphan*/  DSCC_RC_RANGE_PARAMETERS_3_UDW ; 
 int DSC_422_ENABLE ; 
 int DSC_BLOCK_PREDICTION ; 
 int DSC_BPC_SHIFT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int DSC_COLOR_SPACE_CONVERSION ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int DSC_LINE_BUF_DEPTH_SHIFT ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int DSC_NUM_BUF_RANGES ; 
 int FUNC11 (int) ; 
 int FUNC12 (int) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DSC_RC_EDGE_FACTOR_CONST ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DSC_RC_MODEL_SIZE_CONST ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DSC_RC_TGT_OFFSET_HI_CONST ; 
 int /*<<< orphan*/  DSC_RC_TGT_OFFSET_LO_CONST ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ ) ; 
 int FUNC21 (int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ ) ; 
 int FUNC23 (int) ; 
 int FUNC24 (int) ; 
 int FUNC25 (int) ; 
 int FUNC26 (int) ; 
 int DSC_VBR_ENABLE ; 
 int DSC_VER_MAJ ; 
 int DSC_VER_MIN_SHIFT ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int) ; 
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
 int /*<<< orphan*/  FUNC42 (int) ; 
 int /*<<< orphan*/  FUNC43 (int) ; 
 int /*<<< orphan*/  FUNC44 (int) ; 
 int /*<<< orphan*/  FUNC45 (int) ; 
 int /*<<< orphan*/  FUNC46 (int) ; 
 int /*<<< orphan*/  FUNC47 (int) ; 
 int /*<<< orphan*/  FUNC48 (int) ; 
 int /*<<< orphan*/  FUNC49 (int) ; 
 int /*<<< orphan*/  FUNC50 (int) ; 
 int /*<<< orphan*/  FUNC51 (int) ; 
 int /*<<< orphan*/  FUNC52 (int) ; 
 int /*<<< orphan*/  FUNC53 (int) ; 
 int /*<<< orphan*/  FUNC54 (int) ; 
 int /*<<< orphan*/  FUNC55 (int) ; 
 int /*<<< orphan*/  FUNC56 (int) ; 
 int /*<<< orphan*/  FUNC57 (int) ; 
 int /*<<< orphan*/  FUNC58 (int) ; 
 int /*<<< orphan*/  FUNC59 (int) ; 
 int /*<<< orphan*/  FUNC60 (int) ; 
 int /*<<< orphan*/  FUNC61 (int) ; 
 int /*<<< orphan*/  FUNC62 (int) ; 
 int /*<<< orphan*/  FUNC63 (int) ; 
 int /*<<< orphan*/  FUNC64 (int) ; 
 int /*<<< orphan*/  FUNC65 (int) ; 
 int /*<<< orphan*/  FUNC66 (int) ; 
 int /*<<< orphan*/  FUNC67 (int) ; 
 int /*<<< orphan*/  FUNC68 (int) ; 
 int /*<<< orphan*/  FUNC69 (int) ; 
 int /*<<< orphan*/  FUNC70 (int) ; 
 int /*<<< orphan*/  FUNC71 (int) ; 
 int /*<<< orphan*/  FUNC72 (int) ; 
 int /*<<< orphan*/  FUNC73 (int) ; 
 int /*<<< orphan*/  FUNC74 (int) ; 
 int /*<<< orphan*/  FUNC75 (int) ; 
 int RC_BPG_OFFSET_SHIFT ; 
 int RC_MAX_QP_SHIFT ; 
 int RC_MIN_QP_SHIFT ; 
 int TRANSCODER_EDP ; 
 int /*<<< orphan*/  FUNC76 (int*,int /*<<< orphan*/ ,int) ; 
 struct drm_i915_private* FUNC77 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC78 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC79(struct intel_encoder *encoder,
						const struct intel_crtc_state *crtc_state)
{
	struct intel_crtc *crtc = FUNC78(crtc_state->base.crtc);
	struct drm_i915_private *dev_priv = FUNC77(encoder->base.dev);
	const struct drm_dsc_config *vdsc_cfg = &crtc_state->dp_dsc_cfg;
	enum pipe pipe = crtc->pipe;
	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
	u32 pps_val = 0;
	u32 rc_buf_thresh_dword[4];
	u32 rc_range_params_dword[8];
	u8 num_vdsc_instances = (crtc_state->dsc_params.dsc_split) ? 2 : 1;
	int i = 0;

	/* Populate PICTURE_PARAMETER_SET_0 registers */
	pps_val = DSC_VER_MAJ | vdsc_cfg->dsc_version_minor <<
		DSC_VER_MIN_SHIFT |
		vdsc_cfg->bits_per_component << DSC_BPC_SHIFT |
		vdsc_cfg->line_buf_depth << DSC_LINE_BUF_DEPTH_SHIFT;
	if (vdsc_cfg->block_pred_enable)
		pps_val |= DSC_BLOCK_PREDICTION;
	if (vdsc_cfg->convert_rgb)
		pps_val |= DSC_COLOR_SPACE_CONVERSION;
	if (vdsc_cfg->simple_422)
		pps_val |= DSC_422_ENABLE;
	if (vdsc_cfg->vbr_enable)
		pps_val |= DSC_VBR_ENABLE;
	FUNC0("PPS0 = 0x%08x\n", pps_val);
	if (cpu_transcoder == TRANSCODER_EDP) {
		FUNC27(DSCA_PICTURE_PARAMETER_SET_0, pps_val);
		/*
		 * If 2 VDSC instances are needed, configure PPS for second
		 * VDSC
		 */
		if (crtc_state->dsc_params.dsc_split)
			FUNC27(DSCC_PICTURE_PARAMETER_SET_0, pps_val);
	} else {
		FUNC27(FUNC28(pipe), pps_val);
		if (crtc_state->dsc_params.dsc_split)
			FUNC27(FUNC52(pipe),
				   pps_val);
	}

	/* Populate PICTURE_PARAMETER_SET_1 registers */
	pps_val = 0;
	pps_val |= FUNC1(vdsc_cfg->bits_per_pixel);
	FUNC0("PPS1 = 0x%08x\n", pps_val);
	if (cpu_transcoder == TRANSCODER_EDP) {
		FUNC27(DSCA_PICTURE_PARAMETER_SET_1, pps_val);
		/*
		 * If 2 VDSC instances are needed, configure PPS for second
		 * VDSC
		 */
		if (crtc_state->dsc_params.dsc_split)
			FUNC27(DSCC_PICTURE_PARAMETER_SET_1, pps_val);
	} else {
		FUNC27(FUNC29(pipe), pps_val);
		if (crtc_state->dsc_params.dsc_split)
			FUNC27(FUNC53(pipe),
				   pps_val);
	}

	/* Populate PICTURE_PARAMETER_SET_2 registers */
	pps_val = 0;
	pps_val |= FUNC11(vdsc_cfg->pic_height) |
		FUNC12(vdsc_cfg->pic_width / num_vdsc_instances);
	FUNC0("PPS2 = 0x%08x\n", pps_val);
	if (cpu_transcoder == TRANSCODER_EDP) {
		FUNC27(DSCA_PICTURE_PARAMETER_SET_2, pps_val);
		/*
		 * If 2 VDSC instances are needed, configure PPS for second
		 * VDSC
		 */
		if (crtc_state->dsc_params.dsc_split)
			FUNC27(DSCC_PICTURE_PARAMETER_SET_2, pps_val);
	} else {
		FUNC27(FUNC32(pipe), pps_val);
		if (crtc_state->dsc_params.dsc_split)
			FUNC27(FUNC56(pipe),
				   pps_val);
	}

	/* Populate PICTURE_PARAMETER_SET_3 registers */
	pps_val = 0;
	pps_val |= FUNC23(vdsc_cfg->slice_height) |
		FUNC26(vdsc_cfg->slice_width);
	FUNC0("PPS3 = 0x%08x\n", pps_val);
	if (cpu_transcoder == TRANSCODER_EDP) {
		FUNC27(DSCA_PICTURE_PARAMETER_SET_3, pps_val);
		/*
		 * If 2 VDSC instances are needed, configure PPS for second
		 * VDSC
		 */
		if (crtc_state->dsc_params.dsc_split)
			FUNC27(DSCC_PICTURE_PARAMETER_SET_3, pps_val);
	} else {
		FUNC27(FUNC33(pipe), pps_val);
		if (crtc_state->dsc_params.dsc_split)
			FUNC27(FUNC57(pipe),
				   pps_val);
	}

	/* Populate PICTURE_PARAMETER_SET_4 registers */
	pps_val = 0;
	pps_val |= FUNC9(vdsc_cfg->initial_xmit_delay) |
		FUNC6(vdsc_cfg->initial_dec_delay);
	FUNC0("PPS4 = 0x%08x\n", pps_val);
	if (cpu_transcoder == TRANSCODER_EDP) {
		FUNC27(DSCA_PICTURE_PARAMETER_SET_4, pps_val);
		/*
		 * If 2 VDSC instances are needed, configure PPS for second
		 * VDSC
		 */
		if (crtc_state->dsc_params.dsc_split)
			FUNC27(DSCC_PICTURE_PARAMETER_SET_4, pps_val);
	} else {
		FUNC27(FUNC34(pipe), pps_val);
		if (crtc_state->dsc_params.dsc_split)
			FUNC27(FUNC58(pipe),
				   pps_val);
	}

	/* Populate PICTURE_PARAMETER_SET_5 registers */
	pps_val = 0;
	pps_val |= FUNC20(vdsc_cfg->scale_increment_interval) |
		FUNC19(vdsc_cfg->scale_decrement_interval);
	FUNC0("PPS5 = 0x%08x\n", pps_val);
	if (cpu_transcoder == TRANSCODER_EDP) {
		FUNC27(DSCA_PICTURE_PARAMETER_SET_5, pps_val);
		/*
		 * If 2 VDSC instances are needed, configure PPS for second
		 * VDSC
		 */
		if (crtc_state->dsc_params.dsc_split)
			FUNC27(DSCC_PICTURE_PARAMETER_SET_5, pps_val);
	} else {
		FUNC27(FUNC35(pipe), pps_val);
		if (crtc_state->dsc_params.dsc_split)
			FUNC27(FUNC59(pipe),
				   pps_val);
	}

	/* Populate PICTURE_PARAMETER_SET_6 registers */
	pps_val = 0;
	pps_val |= FUNC8(vdsc_cfg->initial_scale_value) |
		FUNC3(vdsc_cfg->first_line_bpg_offset) |
		FUNC5(vdsc_cfg->flatness_min_qp) |
		FUNC4(vdsc_cfg->flatness_max_qp);
	FUNC0("PPS6 = 0x%08x\n", pps_val);
	if (cpu_transcoder == TRANSCODER_EDP) {
		FUNC27(DSCA_PICTURE_PARAMETER_SET_6, pps_val);
		/*
		 * If 2 VDSC instances are needed, configure PPS for second
		 * VDSC
		 */
		if (crtc_state->dsc_params.dsc_split)
			FUNC27(DSCC_PICTURE_PARAMETER_SET_6, pps_val);
	} else {
		FUNC27(FUNC36(pipe), pps_val);
		if (crtc_state->dsc_params.dsc_split)
			FUNC27(FUNC60(pipe),
				   pps_val);
	}

	/* Populate PICTURE_PARAMETER_SET_7 registers */
	pps_val = 0;
	pps_val |= FUNC21(vdsc_cfg->slice_bpg_offset) |
		FUNC10(vdsc_cfg->nfl_bpg_offset);
	FUNC0("PPS7 = 0x%08x\n", pps_val);
	if (cpu_transcoder == TRANSCODER_EDP) {
		FUNC27(DSCA_PICTURE_PARAMETER_SET_7, pps_val);
		/*
		 * If 2 VDSC instances are needed, configure PPS for second
		 * VDSC
		 */
		if (crtc_state->dsc_params.dsc_split)
			FUNC27(DSCC_PICTURE_PARAMETER_SET_7, pps_val);
	} else {
		FUNC27(FUNC37(pipe), pps_val);
		if (crtc_state->dsc_params.dsc_split)
			FUNC27(FUNC61(pipe),
				   pps_val);
	}

	/* Populate PICTURE_PARAMETER_SET_8 registers */
	pps_val = 0;
	pps_val |= FUNC2(vdsc_cfg->final_offset) |
		FUNC7(vdsc_cfg->initial_offset);
	FUNC0("PPS8 = 0x%08x\n", pps_val);
	if (cpu_transcoder == TRANSCODER_EDP) {
		FUNC27(DSCA_PICTURE_PARAMETER_SET_8, pps_val);
		/*
		 * If 2 VDSC instances are needed, configure PPS for second
		 * VDSC
		 */
		if (crtc_state->dsc_params.dsc_split)
			FUNC27(DSCC_PICTURE_PARAMETER_SET_8, pps_val);
	} else {
		FUNC27(FUNC38(pipe), pps_val);
		if (crtc_state->dsc_params.dsc_split)
			FUNC27(FUNC62(pipe),
				   pps_val);
	}

	/* Populate PICTURE_PARAMETER_SET_9 registers */
	pps_val = 0;
	pps_val |= FUNC14(DSC_RC_MODEL_SIZE_CONST) |
		FUNC13(DSC_RC_EDGE_FACTOR_CONST);
	FUNC0("PPS9 = 0x%08x\n", pps_val);
	if (cpu_transcoder == TRANSCODER_EDP) {
		FUNC27(DSCA_PICTURE_PARAMETER_SET_9, pps_val);
		/*
		 * If 2 VDSC instances are needed, configure PPS for second
		 * VDSC
		 */
		if (crtc_state->dsc_params.dsc_split)
			FUNC27(DSCC_PICTURE_PARAMETER_SET_9, pps_val);
	} else {
		FUNC27(FUNC39(pipe), pps_val);
		if (crtc_state->dsc_params.dsc_split)
			FUNC27(FUNC63(pipe),
				   pps_val);
	}

	/* Populate PICTURE_PARAMETER_SET_10 registers */
	pps_val = 0;
	pps_val |= FUNC15(vdsc_cfg->rc_quant_incr_limit0) |
		FUNC16(vdsc_cfg->rc_quant_incr_limit1) |
		FUNC17(DSC_RC_TGT_OFFSET_HI_CONST) |
		FUNC18(DSC_RC_TGT_OFFSET_LO_CONST);
	FUNC0("PPS10 = 0x%08x\n", pps_val);
	if (cpu_transcoder == TRANSCODER_EDP) {
		FUNC27(DSCA_PICTURE_PARAMETER_SET_10, pps_val);
		/*
		 * If 2 VDSC instances are needed, configure PPS for second
		 * VDSC
		 */
		if (crtc_state->dsc_params.dsc_split)
			FUNC27(DSCC_PICTURE_PARAMETER_SET_10, pps_val);
	} else {
		FUNC27(FUNC30(pipe), pps_val);
		if (crtc_state->dsc_params.dsc_split)
			FUNC27(FUNC54(pipe),
				   pps_val);
	}

	/* Populate Picture parameter set 16 */
	pps_val = 0;
	pps_val |= FUNC22(vdsc_cfg->slice_chunk_size) |
		FUNC24((vdsc_cfg->pic_width / num_vdsc_instances) /
				   vdsc_cfg->slice_width) |
		FUNC25(vdsc_cfg->pic_height /
					vdsc_cfg->slice_height);
	FUNC0("PPS16 = 0x%08x\n", pps_val);
	if (cpu_transcoder == TRANSCODER_EDP) {
		FUNC27(DSCA_PICTURE_PARAMETER_SET_16, pps_val);
		/*
		 * If 2 VDSC instances are needed, configure PPS for second
		 * VDSC
		 */
		if (crtc_state->dsc_params.dsc_split)
			FUNC27(DSCC_PICTURE_PARAMETER_SET_16, pps_val);
	} else {
		FUNC27(FUNC31(pipe), pps_val);
		if (crtc_state->dsc_params.dsc_split)
			FUNC27(FUNC55(pipe),
				   pps_val);
	}

	/* Populate the RC_BUF_THRESH registers */
	FUNC76(rc_buf_thresh_dword, 0, sizeof(rc_buf_thresh_dword));
	for (i = 0; i < DSC_NUM_BUF_RANGES - 1; i++) {
		rc_buf_thresh_dword[i / 4] |=
			(u32)(vdsc_cfg->rc_buf_thresh[i] <<
			      BITS_PER_BYTE * (i % 4));
		FUNC0(" RC_BUF_THRESH%d = 0x%08x\n", i,
			 rc_buf_thresh_dword[i / 4]);
	}
	if (cpu_transcoder == TRANSCODER_EDP) {
		FUNC27(DSCA_RC_BUF_THRESH_0, rc_buf_thresh_dword[0]);
		FUNC27(DSCA_RC_BUF_THRESH_0_UDW, rc_buf_thresh_dword[1]);
		FUNC27(DSCA_RC_BUF_THRESH_1, rc_buf_thresh_dword[2]);
		FUNC27(DSCA_RC_BUF_THRESH_1_UDW, rc_buf_thresh_dword[3]);
		if (crtc_state->dsc_params.dsc_split) {
			FUNC27(DSCC_RC_BUF_THRESH_0,
				   rc_buf_thresh_dword[0]);
			FUNC27(DSCC_RC_BUF_THRESH_0_UDW,
				   rc_buf_thresh_dword[1]);
			FUNC27(DSCC_RC_BUF_THRESH_1,
				   rc_buf_thresh_dword[2]);
			FUNC27(DSCC_RC_BUF_THRESH_1_UDW,
				   rc_buf_thresh_dword[3]);
		}
	} else {
		FUNC27(FUNC40(pipe),
			   rc_buf_thresh_dword[0]);
		FUNC27(FUNC41(pipe),
			   rc_buf_thresh_dword[1]);
		FUNC27(FUNC42(pipe),
			   rc_buf_thresh_dword[2]);
		FUNC27(FUNC43(pipe),
			   rc_buf_thresh_dword[3]);
		if (crtc_state->dsc_params.dsc_split) {
			FUNC27(FUNC64(pipe),
				   rc_buf_thresh_dword[0]);
			FUNC27(FUNC65(pipe),
				   rc_buf_thresh_dword[1]);
			FUNC27(FUNC66(pipe),
				   rc_buf_thresh_dword[2]);
			FUNC27(FUNC67(pipe),
				   rc_buf_thresh_dword[3]);
		}
	}

	/* Populate the RC_RANGE_PARAMETERS registers */
	FUNC76(rc_range_params_dword, 0, sizeof(rc_range_params_dword));
	for (i = 0; i < DSC_NUM_BUF_RANGES; i++) {
		rc_range_params_dword[i / 2] |=
			(u32)(((vdsc_cfg->rc_range_params[i].range_bpg_offset <<
				RC_BPG_OFFSET_SHIFT) |
			       (vdsc_cfg->rc_range_params[i].range_max_qp <<
				RC_MAX_QP_SHIFT) |
			       (vdsc_cfg->rc_range_params[i].range_min_qp <<
				RC_MIN_QP_SHIFT)) << 16 * (i % 2));
		FUNC0(" RC_RANGE_PARAM_%d = 0x%08x\n", i,
			 rc_range_params_dword[i / 2]);
	}
	if (cpu_transcoder == TRANSCODER_EDP) {
		FUNC27(DSCA_RC_RANGE_PARAMETERS_0,
			   rc_range_params_dword[0]);
		FUNC27(DSCA_RC_RANGE_PARAMETERS_0_UDW,
			   rc_range_params_dword[1]);
		FUNC27(DSCA_RC_RANGE_PARAMETERS_1,
			   rc_range_params_dword[2]);
		FUNC27(DSCA_RC_RANGE_PARAMETERS_1_UDW,
			   rc_range_params_dword[3]);
		FUNC27(DSCA_RC_RANGE_PARAMETERS_2,
			   rc_range_params_dword[4]);
		FUNC27(DSCA_RC_RANGE_PARAMETERS_2_UDW,
			   rc_range_params_dword[5]);
		FUNC27(DSCA_RC_RANGE_PARAMETERS_3,
			   rc_range_params_dword[6]);
		FUNC27(DSCA_RC_RANGE_PARAMETERS_3_UDW,
			   rc_range_params_dword[7]);
		if (crtc_state->dsc_params.dsc_split) {
			FUNC27(DSCC_RC_RANGE_PARAMETERS_0,
				   rc_range_params_dword[0]);
			FUNC27(DSCC_RC_RANGE_PARAMETERS_0_UDW,
				   rc_range_params_dword[1]);
			FUNC27(DSCC_RC_RANGE_PARAMETERS_1,
				   rc_range_params_dword[2]);
			FUNC27(DSCC_RC_RANGE_PARAMETERS_1_UDW,
				   rc_range_params_dword[3]);
			FUNC27(DSCC_RC_RANGE_PARAMETERS_2,
				   rc_range_params_dword[4]);
			FUNC27(DSCC_RC_RANGE_PARAMETERS_2_UDW,
				   rc_range_params_dword[5]);
			FUNC27(DSCC_RC_RANGE_PARAMETERS_3,
				   rc_range_params_dword[6]);
			FUNC27(DSCC_RC_RANGE_PARAMETERS_3_UDW,
				   rc_range_params_dword[7]);
		}
	} else {
		FUNC27(FUNC44(pipe),
			   rc_range_params_dword[0]);
		FUNC27(FUNC45(pipe),
			   rc_range_params_dword[1]);
		FUNC27(FUNC46(pipe),
			   rc_range_params_dword[2]);
		FUNC27(FUNC47(pipe),
			   rc_range_params_dword[3]);
		FUNC27(FUNC48(pipe),
			   rc_range_params_dword[4]);
		FUNC27(FUNC49(pipe),
			   rc_range_params_dword[5]);
		FUNC27(FUNC50(pipe),
			   rc_range_params_dword[6]);
		FUNC27(FUNC51(pipe),
			   rc_range_params_dword[7]);
		if (crtc_state->dsc_params.dsc_split) {
			FUNC27(FUNC68(pipe),
				   rc_range_params_dword[0]);
			FUNC27(FUNC69(pipe),
				   rc_range_params_dword[1]);
			FUNC27(FUNC70(pipe),
				   rc_range_params_dword[2]);
			FUNC27(FUNC71(pipe),
				   rc_range_params_dword[3]);
			FUNC27(FUNC72(pipe),
				   rc_range_params_dword[4]);
			FUNC27(FUNC73(pipe),
				   rc_range_params_dword[5]);
			FUNC27(FUNC74(pipe),
				   rc_range_params_dword[6]);
			FUNC27(FUNC75(pipe),
				   rc_range_params_dword[7]);
		}
	}
}