
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_6__ {int dev; } ;
struct intel_encoder {TYPE_2__ base; } ;
struct TYPE_8__ {scalar_t__ dsc_split; } ;
struct drm_dsc_config {int dsc_version_minor; int bits_per_component; int line_buf_depth; int pic_height; int pic_width; int slice_height; int slice_width; int* rc_buf_thresh; TYPE_3__* rc_range_params; int slice_chunk_size; int rc_quant_incr_limit1; int rc_quant_incr_limit0; int initial_offset; int final_offset; int nfl_bpg_offset; int slice_bpg_offset; int flatness_max_qp; int flatness_min_qp; int first_line_bpg_offset; int initial_scale_value; int scale_decrement_interval; int scale_increment_interval; int initial_dec_delay; int initial_xmit_delay; int bits_per_pixel; scalar_t__ vbr_enable; scalar_t__ simple_422; scalar_t__ convert_rgb; scalar_t__ block_pred_enable; } ;
struct TYPE_5__ {int crtc; } ;
struct intel_crtc_state {int cpu_transcoder; TYPE_4__ dsc_params; struct drm_dsc_config dp_dsc_cfg; TYPE_1__ base; } ;
struct intel_crtc {int pipe; } ;
struct drm_i915_private {int dummy; } ;
typedef int rc_range_params_dword ;
typedef int rc_buf_thresh_dword ;
typedef enum transcoder { ____Placeholder_transcoder } transcoder ;
typedef enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_7__ {int range_bpg_offset; int range_max_qp; int range_min_qp; } ;


 int BITS_PER_BYTE ;
 int DRM_INFO (char*,int,...) ;
 int DSCA_PICTURE_PARAMETER_SET_0 ;
 int DSCA_PICTURE_PARAMETER_SET_1 ;
 int DSCA_PICTURE_PARAMETER_SET_10 ;
 int DSCA_PICTURE_PARAMETER_SET_16 ;
 int DSCA_PICTURE_PARAMETER_SET_2 ;
 int DSCA_PICTURE_PARAMETER_SET_3 ;
 int DSCA_PICTURE_PARAMETER_SET_4 ;
 int DSCA_PICTURE_PARAMETER_SET_5 ;
 int DSCA_PICTURE_PARAMETER_SET_6 ;
 int DSCA_PICTURE_PARAMETER_SET_7 ;
 int DSCA_PICTURE_PARAMETER_SET_8 ;
 int DSCA_PICTURE_PARAMETER_SET_9 ;
 int DSCA_RC_BUF_THRESH_0 ;
 int DSCA_RC_BUF_THRESH_0_UDW ;
 int DSCA_RC_BUF_THRESH_1 ;
 int DSCA_RC_BUF_THRESH_1_UDW ;
 int DSCA_RC_RANGE_PARAMETERS_0 ;
 int DSCA_RC_RANGE_PARAMETERS_0_UDW ;
 int DSCA_RC_RANGE_PARAMETERS_1 ;
 int DSCA_RC_RANGE_PARAMETERS_1_UDW ;
 int DSCA_RC_RANGE_PARAMETERS_2 ;
 int DSCA_RC_RANGE_PARAMETERS_2_UDW ;
 int DSCA_RC_RANGE_PARAMETERS_3 ;
 int DSCA_RC_RANGE_PARAMETERS_3_UDW ;
 int DSCC_PICTURE_PARAMETER_SET_0 ;
 int DSCC_PICTURE_PARAMETER_SET_1 ;
 int DSCC_PICTURE_PARAMETER_SET_10 ;
 int DSCC_PICTURE_PARAMETER_SET_16 ;
 int DSCC_PICTURE_PARAMETER_SET_2 ;
 int DSCC_PICTURE_PARAMETER_SET_3 ;
 int DSCC_PICTURE_PARAMETER_SET_4 ;
 int DSCC_PICTURE_PARAMETER_SET_5 ;
 int DSCC_PICTURE_PARAMETER_SET_6 ;
 int DSCC_PICTURE_PARAMETER_SET_7 ;
 int DSCC_PICTURE_PARAMETER_SET_8 ;
 int DSCC_PICTURE_PARAMETER_SET_9 ;
 int DSCC_RC_BUF_THRESH_0 ;
 int DSCC_RC_BUF_THRESH_0_UDW ;
 int DSCC_RC_BUF_THRESH_1 ;
 int DSCC_RC_BUF_THRESH_1_UDW ;
 int DSCC_RC_RANGE_PARAMETERS_0 ;
 int DSCC_RC_RANGE_PARAMETERS_0_UDW ;
 int DSCC_RC_RANGE_PARAMETERS_1 ;
 int DSCC_RC_RANGE_PARAMETERS_1_UDW ;
 int DSCC_RC_RANGE_PARAMETERS_2 ;
 int DSCC_RC_RANGE_PARAMETERS_2_UDW ;
 int DSCC_RC_RANGE_PARAMETERS_3 ;
 int DSCC_RC_RANGE_PARAMETERS_3_UDW ;
 int DSC_422_ENABLE ;
 int DSC_BLOCK_PREDICTION ;
 int DSC_BPC_SHIFT ;
 int DSC_BPP (int ) ;
 int DSC_COLOR_SPACE_CONVERSION ;
 int DSC_FINAL_OFFSET (int ) ;
 int DSC_FIRST_LINE_BPG_OFFSET (int ) ;
 int DSC_FLATNESS_MAX_QP (int ) ;
 int DSC_FLATNESS_MIN_QP (int ) ;
 int DSC_INITIAL_DEC_DELAY (int ) ;
 int DSC_INITIAL_OFFSET (int ) ;
 int DSC_INITIAL_SCALE_VALUE (int ) ;
 int DSC_INITIAL_XMIT_DELAY (int ) ;
 int DSC_LINE_BUF_DEPTH_SHIFT ;
 int DSC_NFL_BPG_OFFSET (int ) ;
 int DSC_NUM_BUF_RANGES ;
 int DSC_PIC_HEIGHT (int) ;
 int DSC_PIC_WIDTH (int) ;
 int DSC_RC_EDGE_FACTOR (int ) ;
 int DSC_RC_EDGE_FACTOR_CONST ;
 int DSC_RC_MODEL_SIZE (int ) ;
 int DSC_RC_MODEL_SIZE_CONST ;
 int DSC_RC_QUANT_INC_LIMIT0 (int ) ;
 int DSC_RC_QUANT_INC_LIMIT1 (int ) ;
 int DSC_RC_TARGET_OFF_HIGH (int ) ;
 int DSC_RC_TARGET_OFF_LOW (int ) ;
 int DSC_RC_TGT_OFFSET_HI_CONST ;
 int DSC_RC_TGT_OFFSET_LO_CONST ;
 int DSC_SCALE_DEC_INT (int ) ;
 int DSC_SCALE_INC_INT (int ) ;
 int DSC_SLICE_BPG_OFFSET (int ) ;
 int DSC_SLICE_CHUNK_SIZE (int ) ;
 int DSC_SLICE_HEIGHT (int) ;
 int DSC_SLICE_PER_LINE (int) ;
 int DSC_SLICE_ROW_PER_FRAME (int) ;
 int DSC_SLICE_WIDTH (int) ;
 int DSC_VBR_ENABLE ;
 int DSC_VER_MAJ ;
 int DSC_VER_MIN_SHIFT ;
 int I915_WRITE (int ,int) ;
 int ICL_DSC0_PICTURE_PARAMETER_SET_0 (int) ;
 int ICL_DSC0_PICTURE_PARAMETER_SET_1 (int) ;
 int ICL_DSC0_PICTURE_PARAMETER_SET_10 (int) ;
 int ICL_DSC0_PICTURE_PARAMETER_SET_16 (int) ;
 int ICL_DSC0_PICTURE_PARAMETER_SET_2 (int) ;
 int ICL_DSC0_PICTURE_PARAMETER_SET_3 (int) ;
 int ICL_DSC0_PICTURE_PARAMETER_SET_4 (int) ;
 int ICL_DSC0_PICTURE_PARAMETER_SET_5 (int) ;
 int ICL_DSC0_PICTURE_PARAMETER_SET_6 (int) ;
 int ICL_DSC0_PICTURE_PARAMETER_SET_7 (int) ;
 int ICL_DSC0_PICTURE_PARAMETER_SET_8 (int) ;
 int ICL_DSC0_PICTURE_PARAMETER_SET_9 (int) ;
 int ICL_DSC0_RC_BUF_THRESH_0 (int) ;
 int ICL_DSC0_RC_BUF_THRESH_0_UDW (int) ;
 int ICL_DSC0_RC_BUF_THRESH_1 (int) ;
 int ICL_DSC0_RC_BUF_THRESH_1_UDW (int) ;
 int ICL_DSC0_RC_RANGE_PARAMETERS_0 (int) ;
 int ICL_DSC0_RC_RANGE_PARAMETERS_0_UDW (int) ;
 int ICL_DSC0_RC_RANGE_PARAMETERS_1 (int) ;
 int ICL_DSC0_RC_RANGE_PARAMETERS_1_UDW (int) ;
 int ICL_DSC0_RC_RANGE_PARAMETERS_2 (int) ;
 int ICL_DSC0_RC_RANGE_PARAMETERS_2_UDW (int) ;
 int ICL_DSC0_RC_RANGE_PARAMETERS_3 (int) ;
 int ICL_DSC0_RC_RANGE_PARAMETERS_3_UDW (int) ;
 int ICL_DSC1_PICTURE_PARAMETER_SET_0 (int) ;
 int ICL_DSC1_PICTURE_PARAMETER_SET_1 (int) ;
 int ICL_DSC1_PICTURE_PARAMETER_SET_10 (int) ;
 int ICL_DSC1_PICTURE_PARAMETER_SET_16 (int) ;
 int ICL_DSC1_PICTURE_PARAMETER_SET_2 (int) ;
 int ICL_DSC1_PICTURE_PARAMETER_SET_3 (int) ;
 int ICL_DSC1_PICTURE_PARAMETER_SET_4 (int) ;
 int ICL_DSC1_PICTURE_PARAMETER_SET_5 (int) ;
 int ICL_DSC1_PICTURE_PARAMETER_SET_6 (int) ;
 int ICL_DSC1_PICTURE_PARAMETER_SET_7 (int) ;
 int ICL_DSC1_PICTURE_PARAMETER_SET_8 (int) ;
 int ICL_DSC1_PICTURE_PARAMETER_SET_9 (int) ;
 int ICL_DSC1_RC_BUF_THRESH_0 (int) ;
 int ICL_DSC1_RC_BUF_THRESH_0_UDW (int) ;
 int ICL_DSC1_RC_BUF_THRESH_1 (int) ;
 int ICL_DSC1_RC_BUF_THRESH_1_UDW (int) ;
 int ICL_DSC1_RC_RANGE_PARAMETERS_0 (int) ;
 int ICL_DSC1_RC_RANGE_PARAMETERS_0_UDW (int) ;
 int ICL_DSC1_RC_RANGE_PARAMETERS_1 (int) ;
 int ICL_DSC1_RC_RANGE_PARAMETERS_1_UDW (int) ;
 int ICL_DSC1_RC_RANGE_PARAMETERS_2 (int) ;
 int ICL_DSC1_RC_RANGE_PARAMETERS_2_UDW (int) ;
 int ICL_DSC1_RC_RANGE_PARAMETERS_3 (int) ;
 int ICL_DSC1_RC_RANGE_PARAMETERS_3_UDW (int) ;
 int RC_BPG_OFFSET_SHIFT ;
 int RC_MAX_QP_SHIFT ;
 int RC_MIN_QP_SHIFT ;
 int TRANSCODER_EDP ;
 int memset (int*,int ,int) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;

__attribute__((used)) static void intel_configure_pps_for_dsc_encoder(struct intel_encoder *encoder,
      const struct intel_crtc_state *crtc_state)
{
 struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 const struct drm_dsc_config *vdsc_cfg = &crtc_state->dp_dsc_cfg;
 enum pipe pipe = crtc->pipe;
 enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 u32 pps_val = 0;
 u32 rc_buf_thresh_dword[4];
 u32 rc_range_params_dword[8];
 u8 num_vdsc_instances = (crtc_state->dsc_params.dsc_split) ? 2 : 1;
 int i = 0;


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
 DRM_INFO("PPS0 = 0x%08x\n", pps_val);
 if (cpu_transcoder == TRANSCODER_EDP) {
  I915_WRITE(DSCA_PICTURE_PARAMETER_SET_0, pps_val);




  if (crtc_state->dsc_params.dsc_split)
   I915_WRITE(DSCC_PICTURE_PARAMETER_SET_0, pps_val);
 } else {
  I915_WRITE(ICL_DSC0_PICTURE_PARAMETER_SET_0(pipe), pps_val);
  if (crtc_state->dsc_params.dsc_split)
   I915_WRITE(ICL_DSC1_PICTURE_PARAMETER_SET_0(pipe),
       pps_val);
 }


 pps_val = 0;
 pps_val |= DSC_BPP(vdsc_cfg->bits_per_pixel);
 DRM_INFO("PPS1 = 0x%08x\n", pps_val);
 if (cpu_transcoder == TRANSCODER_EDP) {
  I915_WRITE(DSCA_PICTURE_PARAMETER_SET_1, pps_val);




  if (crtc_state->dsc_params.dsc_split)
   I915_WRITE(DSCC_PICTURE_PARAMETER_SET_1, pps_val);
 } else {
  I915_WRITE(ICL_DSC0_PICTURE_PARAMETER_SET_1(pipe), pps_val);
  if (crtc_state->dsc_params.dsc_split)
   I915_WRITE(ICL_DSC1_PICTURE_PARAMETER_SET_1(pipe),
       pps_val);
 }


 pps_val = 0;
 pps_val |= DSC_PIC_HEIGHT(vdsc_cfg->pic_height) |
  DSC_PIC_WIDTH(vdsc_cfg->pic_width / num_vdsc_instances);
 DRM_INFO("PPS2 = 0x%08x\n", pps_val);
 if (cpu_transcoder == TRANSCODER_EDP) {
  I915_WRITE(DSCA_PICTURE_PARAMETER_SET_2, pps_val);




  if (crtc_state->dsc_params.dsc_split)
   I915_WRITE(DSCC_PICTURE_PARAMETER_SET_2, pps_val);
 } else {
  I915_WRITE(ICL_DSC0_PICTURE_PARAMETER_SET_2(pipe), pps_val);
  if (crtc_state->dsc_params.dsc_split)
   I915_WRITE(ICL_DSC1_PICTURE_PARAMETER_SET_2(pipe),
       pps_val);
 }


 pps_val = 0;
 pps_val |= DSC_SLICE_HEIGHT(vdsc_cfg->slice_height) |
  DSC_SLICE_WIDTH(vdsc_cfg->slice_width);
 DRM_INFO("PPS3 = 0x%08x\n", pps_val);
 if (cpu_transcoder == TRANSCODER_EDP) {
  I915_WRITE(DSCA_PICTURE_PARAMETER_SET_3, pps_val);




  if (crtc_state->dsc_params.dsc_split)
   I915_WRITE(DSCC_PICTURE_PARAMETER_SET_3, pps_val);
 } else {
  I915_WRITE(ICL_DSC0_PICTURE_PARAMETER_SET_3(pipe), pps_val);
  if (crtc_state->dsc_params.dsc_split)
   I915_WRITE(ICL_DSC1_PICTURE_PARAMETER_SET_3(pipe),
       pps_val);
 }


 pps_val = 0;
 pps_val |= DSC_INITIAL_XMIT_DELAY(vdsc_cfg->initial_xmit_delay) |
  DSC_INITIAL_DEC_DELAY(vdsc_cfg->initial_dec_delay);
 DRM_INFO("PPS4 = 0x%08x\n", pps_val);
 if (cpu_transcoder == TRANSCODER_EDP) {
  I915_WRITE(DSCA_PICTURE_PARAMETER_SET_4, pps_val);




  if (crtc_state->dsc_params.dsc_split)
   I915_WRITE(DSCC_PICTURE_PARAMETER_SET_4, pps_val);
 } else {
  I915_WRITE(ICL_DSC0_PICTURE_PARAMETER_SET_4(pipe), pps_val);
  if (crtc_state->dsc_params.dsc_split)
   I915_WRITE(ICL_DSC1_PICTURE_PARAMETER_SET_4(pipe),
       pps_val);
 }


 pps_val = 0;
 pps_val |= DSC_SCALE_INC_INT(vdsc_cfg->scale_increment_interval) |
  DSC_SCALE_DEC_INT(vdsc_cfg->scale_decrement_interval);
 DRM_INFO("PPS5 = 0x%08x\n", pps_val);
 if (cpu_transcoder == TRANSCODER_EDP) {
  I915_WRITE(DSCA_PICTURE_PARAMETER_SET_5, pps_val);




  if (crtc_state->dsc_params.dsc_split)
   I915_WRITE(DSCC_PICTURE_PARAMETER_SET_5, pps_val);
 } else {
  I915_WRITE(ICL_DSC0_PICTURE_PARAMETER_SET_5(pipe), pps_val);
  if (crtc_state->dsc_params.dsc_split)
   I915_WRITE(ICL_DSC1_PICTURE_PARAMETER_SET_5(pipe),
       pps_val);
 }


 pps_val = 0;
 pps_val |= DSC_INITIAL_SCALE_VALUE(vdsc_cfg->initial_scale_value) |
  DSC_FIRST_LINE_BPG_OFFSET(vdsc_cfg->first_line_bpg_offset) |
  DSC_FLATNESS_MIN_QP(vdsc_cfg->flatness_min_qp) |
  DSC_FLATNESS_MAX_QP(vdsc_cfg->flatness_max_qp);
 DRM_INFO("PPS6 = 0x%08x\n", pps_val);
 if (cpu_transcoder == TRANSCODER_EDP) {
  I915_WRITE(DSCA_PICTURE_PARAMETER_SET_6, pps_val);




  if (crtc_state->dsc_params.dsc_split)
   I915_WRITE(DSCC_PICTURE_PARAMETER_SET_6, pps_val);
 } else {
  I915_WRITE(ICL_DSC0_PICTURE_PARAMETER_SET_6(pipe), pps_val);
  if (crtc_state->dsc_params.dsc_split)
   I915_WRITE(ICL_DSC1_PICTURE_PARAMETER_SET_6(pipe),
       pps_val);
 }


 pps_val = 0;
 pps_val |= DSC_SLICE_BPG_OFFSET(vdsc_cfg->slice_bpg_offset) |
  DSC_NFL_BPG_OFFSET(vdsc_cfg->nfl_bpg_offset);
 DRM_INFO("PPS7 = 0x%08x\n", pps_val);
 if (cpu_transcoder == TRANSCODER_EDP) {
  I915_WRITE(DSCA_PICTURE_PARAMETER_SET_7, pps_val);




  if (crtc_state->dsc_params.dsc_split)
   I915_WRITE(DSCC_PICTURE_PARAMETER_SET_7, pps_val);
 } else {
  I915_WRITE(ICL_DSC0_PICTURE_PARAMETER_SET_7(pipe), pps_val);
  if (crtc_state->dsc_params.dsc_split)
   I915_WRITE(ICL_DSC1_PICTURE_PARAMETER_SET_7(pipe),
       pps_val);
 }


 pps_val = 0;
 pps_val |= DSC_FINAL_OFFSET(vdsc_cfg->final_offset) |
  DSC_INITIAL_OFFSET(vdsc_cfg->initial_offset);
 DRM_INFO("PPS8 = 0x%08x\n", pps_val);
 if (cpu_transcoder == TRANSCODER_EDP) {
  I915_WRITE(DSCA_PICTURE_PARAMETER_SET_8, pps_val);




  if (crtc_state->dsc_params.dsc_split)
   I915_WRITE(DSCC_PICTURE_PARAMETER_SET_8, pps_val);
 } else {
  I915_WRITE(ICL_DSC0_PICTURE_PARAMETER_SET_8(pipe), pps_val);
  if (crtc_state->dsc_params.dsc_split)
   I915_WRITE(ICL_DSC1_PICTURE_PARAMETER_SET_8(pipe),
       pps_val);
 }


 pps_val = 0;
 pps_val |= DSC_RC_MODEL_SIZE(DSC_RC_MODEL_SIZE_CONST) |
  DSC_RC_EDGE_FACTOR(DSC_RC_EDGE_FACTOR_CONST);
 DRM_INFO("PPS9 = 0x%08x\n", pps_val);
 if (cpu_transcoder == TRANSCODER_EDP) {
  I915_WRITE(DSCA_PICTURE_PARAMETER_SET_9, pps_val);




  if (crtc_state->dsc_params.dsc_split)
   I915_WRITE(DSCC_PICTURE_PARAMETER_SET_9, pps_val);
 } else {
  I915_WRITE(ICL_DSC0_PICTURE_PARAMETER_SET_9(pipe), pps_val);
  if (crtc_state->dsc_params.dsc_split)
   I915_WRITE(ICL_DSC1_PICTURE_PARAMETER_SET_9(pipe),
       pps_val);
 }


 pps_val = 0;
 pps_val |= DSC_RC_QUANT_INC_LIMIT0(vdsc_cfg->rc_quant_incr_limit0) |
  DSC_RC_QUANT_INC_LIMIT1(vdsc_cfg->rc_quant_incr_limit1) |
  DSC_RC_TARGET_OFF_HIGH(DSC_RC_TGT_OFFSET_HI_CONST) |
  DSC_RC_TARGET_OFF_LOW(DSC_RC_TGT_OFFSET_LO_CONST);
 DRM_INFO("PPS10 = 0x%08x\n", pps_val);
 if (cpu_transcoder == TRANSCODER_EDP) {
  I915_WRITE(DSCA_PICTURE_PARAMETER_SET_10, pps_val);




  if (crtc_state->dsc_params.dsc_split)
   I915_WRITE(DSCC_PICTURE_PARAMETER_SET_10, pps_val);
 } else {
  I915_WRITE(ICL_DSC0_PICTURE_PARAMETER_SET_10(pipe), pps_val);
  if (crtc_state->dsc_params.dsc_split)
   I915_WRITE(ICL_DSC1_PICTURE_PARAMETER_SET_10(pipe),
       pps_val);
 }


 pps_val = 0;
 pps_val |= DSC_SLICE_CHUNK_SIZE(vdsc_cfg->slice_chunk_size) |
  DSC_SLICE_PER_LINE((vdsc_cfg->pic_width / num_vdsc_instances) /
       vdsc_cfg->slice_width) |
  DSC_SLICE_ROW_PER_FRAME(vdsc_cfg->pic_height /
     vdsc_cfg->slice_height);
 DRM_INFO("PPS16 = 0x%08x\n", pps_val);
 if (cpu_transcoder == TRANSCODER_EDP) {
  I915_WRITE(DSCA_PICTURE_PARAMETER_SET_16, pps_val);




  if (crtc_state->dsc_params.dsc_split)
   I915_WRITE(DSCC_PICTURE_PARAMETER_SET_16, pps_val);
 } else {
  I915_WRITE(ICL_DSC0_PICTURE_PARAMETER_SET_16(pipe), pps_val);
  if (crtc_state->dsc_params.dsc_split)
   I915_WRITE(ICL_DSC1_PICTURE_PARAMETER_SET_16(pipe),
       pps_val);
 }


 memset(rc_buf_thresh_dword, 0, sizeof(rc_buf_thresh_dword));
 for (i = 0; i < DSC_NUM_BUF_RANGES - 1; i++) {
  rc_buf_thresh_dword[i / 4] |=
   (u32)(vdsc_cfg->rc_buf_thresh[i] <<
         BITS_PER_BYTE * (i % 4));
  DRM_INFO(" RC_BUF_THRESH%d = 0x%08x\n", i,
    rc_buf_thresh_dword[i / 4]);
 }
 if (cpu_transcoder == TRANSCODER_EDP) {
  I915_WRITE(DSCA_RC_BUF_THRESH_0, rc_buf_thresh_dword[0]);
  I915_WRITE(DSCA_RC_BUF_THRESH_0_UDW, rc_buf_thresh_dword[1]);
  I915_WRITE(DSCA_RC_BUF_THRESH_1, rc_buf_thresh_dword[2]);
  I915_WRITE(DSCA_RC_BUF_THRESH_1_UDW, rc_buf_thresh_dword[3]);
  if (crtc_state->dsc_params.dsc_split) {
   I915_WRITE(DSCC_RC_BUF_THRESH_0,
       rc_buf_thresh_dword[0]);
   I915_WRITE(DSCC_RC_BUF_THRESH_0_UDW,
       rc_buf_thresh_dword[1]);
   I915_WRITE(DSCC_RC_BUF_THRESH_1,
       rc_buf_thresh_dword[2]);
   I915_WRITE(DSCC_RC_BUF_THRESH_1_UDW,
       rc_buf_thresh_dword[3]);
  }
 } else {
  I915_WRITE(ICL_DSC0_RC_BUF_THRESH_0(pipe),
      rc_buf_thresh_dword[0]);
  I915_WRITE(ICL_DSC0_RC_BUF_THRESH_0_UDW(pipe),
      rc_buf_thresh_dword[1]);
  I915_WRITE(ICL_DSC0_RC_BUF_THRESH_1(pipe),
      rc_buf_thresh_dword[2]);
  I915_WRITE(ICL_DSC0_RC_BUF_THRESH_1_UDW(pipe),
      rc_buf_thresh_dword[3]);
  if (crtc_state->dsc_params.dsc_split) {
   I915_WRITE(ICL_DSC1_RC_BUF_THRESH_0(pipe),
       rc_buf_thresh_dword[0]);
   I915_WRITE(ICL_DSC1_RC_BUF_THRESH_0_UDW(pipe),
       rc_buf_thresh_dword[1]);
   I915_WRITE(ICL_DSC1_RC_BUF_THRESH_1(pipe),
       rc_buf_thresh_dword[2]);
   I915_WRITE(ICL_DSC1_RC_BUF_THRESH_1_UDW(pipe),
       rc_buf_thresh_dword[3]);
  }
 }


 memset(rc_range_params_dword, 0, sizeof(rc_range_params_dword));
 for (i = 0; i < DSC_NUM_BUF_RANGES; i++) {
  rc_range_params_dword[i / 2] |=
   (u32)(((vdsc_cfg->rc_range_params[i].range_bpg_offset <<
    RC_BPG_OFFSET_SHIFT) |
          (vdsc_cfg->rc_range_params[i].range_max_qp <<
    RC_MAX_QP_SHIFT) |
          (vdsc_cfg->rc_range_params[i].range_min_qp <<
    RC_MIN_QP_SHIFT)) << 16 * (i % 2));
  DRM_INFO(" RC_RANGE_PARAM_%d = 0x%08x\n", i,
    rc_range_params_dword[i / 2]);
 }
 if (cpu_transcoder == TRANSCODER_EDP) {
  I915_WRITE(DSCA_RC_RANGE_PARAMETERS_0,
      rc_range_params_dword[0]);
  I915_WRITE(DSCA_RC_RANGE_PARAMETERS_0_UDW,
      rc_range_params_dword[1]);
  I915_WRITE(DSCA_RC_RANGE_PARAMETERS_1,
      rc_range_params_dword[2]);
  I915_WRITE(DSCA_RC_RANGE_PARAMETERS_1_UDW,
      rc_range_params_dword[3]);
  I915_WRITE(DSCA_RC_RANGE_PARAMETERS_2,
      rc_range_params_dword[4]);
  I915_WRITE(DSCA_RC_RANGE_PARAMETERS_2_UDW,
      rc_range_params_dword[5]);
  I915_WRITE(DSCA_RC_RANGE_PARAMETERS_3,
      rc_range_params_dword[6]);
  I915_WRITE(DSCA_RC_RANGE_PARAMETERS_3_UDW,
      rc_range_params_dword[7]);
  if (crtc_state->dsc_params.dsc_split) {
   I915_WRITE(DSCC_RC_RANGE_PARAMETERS_0,
       rc_range_params_dword[0]);
   I915_WRITE(DSCC_RC_RANGE_PARAMETERS_0_UDW,
       rc_range_params_dword[1]);
   I915_WRITE(DSCC_RC_RANGE_PARAMETERS_1,
       rc_range_params_dword[2]);
   I915_WRITE(DSCC_RC_RANGE_PARAMETERS_1_UDW,
       rc_range_params_dword[3]);
   I915_WRITE(DSCC_RC_RANGE_PARAMETERS_2,
       rc_range_params_dword[4]);
   I915_WRITE(DSCC_RC_RANGE_PARAMETERS_2_UDW,
       rc_range_params_dword[5]);
   I915_WRITE(DSCC_RC_RANGE_PARAMETERS_3,
       rc_range_params_dword[6]);
   I915_WRITE(DSCC_RC_RANGE_PARAMETERS_3_UDW,
       rc_range_params_dword[7]);
  }
 } else {
  I915_WRITE(ICL_DSC0_RC_RANGE_PARAMETERS_0(pipe),
      rc_range_params_dword[0]);
  I915_WRITE(ICL_DSC0_RC_RANGE_PARAMETERS_0_UDW(pipe),
      rc_range_params_dword[1]);
  I915_WRITE(ICL_DSC0_RC_RANGE_PARAMETERS_1(pipe),
      rc_range_params_dword[2]);
  I915_WRITE(ICL_DSC0_RC_RANGE_PARAMETERS_1_UDW(pipe),
      rc_range_params_dword[3]);
  I915_WRITE(ICL_DSC0_RC_RANGE_PARAMETERS_2(pipe),
      rc_range_params_dword[4]);
  I915_WRITE(ICL_DSC0_RC_RANGE_PARAMETERS_2_UDW(pipe),
      rc_range_params_dword[5]);
  I915_WRITE(ICL_DSC0_RC_RANGE_PARAMETERS_3(pipe),
      rc_range_params_dword[6]);
  I915_WRITE(ICL_DSC0_RC_RANGE_PARAMETERS_3_UDW(pipe),
      rc_range_params_dword[7]);
  if (crtc_state->dsc_params.dsc_split) {
   I915_WRITE(ICL_DSC1_RC_RANGE_PARAMETERS_0(pipe),
       rc_range_params_dword[0]);
   I915_WRITE(ICL_DSC1_RC_RANGE_PARAMETERS_0_UDW(pipe),
       rc_range_params_dword[1]);
   I915_WRITE(ICL_DSC1_RC_RANGE_PARAMETERS_1(pipe),
       rc_range_params_dword[2]);
   I915_WRITE(ICL_DSC1_RC_RANGE_PARAMETERS_1_UDW(pipe),
       rc_range_params_dword[3]);
   I915_WRITE(ICL_DSC1_RC_RANGE_PARAMETERS_2(pipe),
       rc_range_params_dword[4]);
   I915_WRITE(ICL_DSC1_RC_RANGE_PARAMETERS_2_UDW(pipe),
       rc_range_params_dword[5]);
   I915_WRITE(ICL_DSC1_RC_RANGE_PARAMETERS_3(pipe),
       rc_range_params_dword[6]);
   I915_WRITE(ICL_DSC1_RC_RANGE_PARAMETERS_3_UDW(pipe),
       rc_range_params_dword[7]);
  }
 }
}
