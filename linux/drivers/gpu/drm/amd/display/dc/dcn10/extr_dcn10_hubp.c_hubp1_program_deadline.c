
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hubp {int dummy; } ;
struct dcn10_hubp {int dummy; } ;
struct _vcs_dpi_display_ttu_regs_st {int qos_ramp_disable_cur0; int qos_level_fixed_cur0; int refcyc_per_req_delivery_cur0; int qos_ramp_disable_c; int qos_level_fixed_c; int refcyc_per_req_delivery_c; int qos_ramp_disable_l; int qos_level_fixed_l; int refcyc_per_req_delivery_l; int qos_level_high_wm; int qos_level_low_wm; } ;
struct _vcs_dpi_display_dlg_regs_st {int refcyc_per_meta_chunk_nom_c; int dst_y_per_meta_row_nom_c; int refcyc_per_pte_group_nom_c; int dst_y_per_pte_row_nom_c; int refcyc_per_pte_group_vblank_c; int refcyc_per_line_delivery_c; int refcyc_per_line_delivery_l; int refcyc_per_meta_chunk_nom_l; int dst_y_per_meta_row_nom_l; int refcyc_per_pte_group_nom_l; int dst_y_per_pte_row_nom_l; int refcyc_per_pte_group_vblank_l; int ref_freq_to_pix_freq; int dst_y_after_scaler; int refcyc_x_after_scaler; int refcyc_per_htotal; int min_dst_y_next_start; int dlg_vblank_end; int refcyc_h_blank_end; } ;


 int BLANK_OFFSET_0 ;
 int BLANK_OFFSET_1 ;
 int DCN_CUR0_TTU_CNTL0 ;
 int DCN_SURF0_TTU_CNTL0 ;
 int DCN_SURF1_TTU_CNTL0 ;
 int DCN_TTU_QOS_WM ;
 int DLG_V_BLANK_END ;
 int DST_AFTER_SCALER ;
 int DST_DIMENSIONS ;
 int DST_Y_AFTER_SCALER ;
 int DST_Y_PER_META_ROW_NOM_C ;
 int DST_Y_PER_META_ROW_NOM_L ;
 int DST_Y_PER_PTE_ROW_NOM_C ;
 int DST_Y_PER_PTE_ROW_NOM_L ;
 int MIN_DST_Y_NEXT_START ;
 int NOM_PARAMETERS_0 ;
 int NOM_PARAMETERS_1 ;
 int NOM_PARAMETERS_2 ;
 int NOM_PARAMETERS_3 ;
 int NOM_PARAMETERS_4 ;
 int NOM_PARAMETERS_5 ;
 int NOM_PARAMETERS_6 ;
 int NOM_PARAMETERS_7 ;
 int PER_LINE_DELIVERY ;
 int QoS_LEVEL_FIXED ;
 int QoS_LEVEL_HIGH_WM ;
 int QoS_LEVEL_LOW_WM ;
 int QoS_RAMP_DISABLE ;
 int REFCYC_H_BLANK_END ;
 int REFCYC_PER_HTOTAL ;
 int REFCYC_PER_LINE_DELIVERY_C ;
 int REFCYC_PER_LINE_DELIVERY_L ;
 int REFCYC_PER_META_CHUNK_NOM_C ;
 int REFCYC_PER_META_CHUNK_NOM_L ;
 int REFCYC_PER_PTE_GROUP_NOM_C ;
 int REFCYC_PER_PTE_GROUP_NOM_L ;
 int REFCYC_PER_PTE_GROUP_VBLANK_C ;
 int REFCYC_PER_PTE_GROUP_VBLANK_L ;
 int REFCYC_PER_REQ_DELIVERY ;
 int REFCYC_X_AFTER_SCALER ;
 int REF_FREQ_TO_PIX_FREQ ;
 scalar_t__ REG (int ) ;
 int REG_SET (int ,int ,int ,int ) ;
 int REG_SET_2 (int ,int ,int ,int ,int ,int ) ;
 int REG_SET_3 (int ,int ,int ,int ,int ,int ,int ,int ) ;
 struct dcn10_hubp* TO_DCN10_HUBP (struct hubp*) ;
 int VBLANK_PARAMETERS_1 ;
 int VBLANK_PARAMETERS_2 ;

void hubp1_program_deadline(
  struct hubp *hubp,
  struct _vcs_dpi_display_dlg_regs_st *dlg_attr,
  struct _vcs_dpi_display_ttu_regs_st *ttu_attr)
{
 struct dcn10_hubp *hubp1 = TO_DCN10_HUBP(hubp);


 REG_SET_2(BLANK_OFFSET_0, 0,
  REFCYC_H_BLANK_END, dlg_attr->refcyc_h_blank_end,
  DLG_V_BLANK_END, dlg_attr->dlg_vblank_end);

 REG_SET(BLANK_OFFSET_1, 0,
  MIN_DST_Y_NEXT_START, dlg_attr->min_dst_y_next_start);

 REG_SET(DST_DIMENSIONS, 0,
  REFCYC_PER_HTOTAL, dlg_attr->refcyc_per_htotal);

 REG_SET_2(DST_AFTER_SCALER, 0,
  REFCYC_X_AFTER_SCALER, dlg_attr->refcyc_x_after_scaler,
  DST_Y_AFTER_SCALER, dlg_attr->dst_y_after_scaler);

 REG_SET(REF_FREQ_TO_PIX_FREQ, 0,
  REF_FREQ_TO_PIX_FREQ, dlg_attr->ref_freq_to_pix_freq);


 REG_SET(VBLANK_PARAMETERS_1, 0,
  REFCYC_PER_PTE_GROUP_VBLANK_L, dlg_attr->refcyc_per_pte_group_vblank_l);

 if (REG(NOM_PARAMETERS_0))
  REG_SET(NOM_PARAMETERS_0, 0,
   DST_Y_PER_PTE_ROW_NOM_L, dlg_attr->dst_y_per_pte_row_nom_l);

 if (REG(NOM_PARAMETERS_1))
  REG_SET(NOM_PARAMETERS_1, 0,
   REFCYC_PER_PTE_GROUP_NOM_L, dlg_attr->refcyc_per_pte_group_nom_l);

 REG_SET(NOM_PARAMETERS_4, 0,
  DST_Y_PER_META_ROW_NOM_L, dlg_attr->dst_y_per_meta_row_nom_l);

 REG_SET(NOM_PARAMETERS_5, 0,
  REFCYC_PER_META_CHUNK_NOM_L, dlg_attr->refcyc_per_meta_chunk_nom_l);

 REG_SET_2(PER_LINE_DELIVERY, 0,
  REFCYC_PER_LINE_DELIVERY_L, dlg_attr->refcyc_per_line_delivery_l,
  REFCYC_PER_LINE_DELIVERY_C, dlg_attr->refcyc_per_line_delivery_c);

 REG_SET(VBLANK_PARAMETERS_2, 0,
  REFCYC_PER_PTE_GROUP_VBLANK_C, dlg_attr->refcyc_per_pte_group_vblank_c);

 if (REG(NOM_PARAMETERS_2))
  REG_SET(NOM_PARAMETERS_2, 0,
   DST_Y_PER_PTE_ROW_NOM_C, dlg_attr->dst_y_per_pte_row_nom_c);

 if (REG(NOM_PARAMETERS_3))
  REG_SET(NOM_PARAMETERS_3, 0,
   REFCYC_PER_PTE_GROUP_NOM_C, dlg_attr->refcyc_per_pte_group_nom_c);

 REG_SET(NOM_PARAMETERS_6, 0,
  DST_Y_PER_META_ROW_NOM_C, dlg_attr->dst_y_per_meta_row_nom_c);

 REG_SET(NOM_PARAMETERS_7, 0,
  REFCYC_PER_META_CHUNK_NOM_C, dlg_attr->refcyc_per_meta_chunk_nom_c);


 REG_SET_2(DCN_TTU_QOS_WM, 0,
  QoS_LEVEL_LOW_WM, ttu_attr->qos_level_low_wm,
  QoS_LEVEL_HIGH_WM, ttu_attr->qos_level_high_wm);




 REG_SET_3(DCN_SURF0_TTU_CNTL0, 0,
  REFCYC_PER_REQ_DELIVERY, ttu_attr->refcyc_per_req_delivery_l,
  QoS_LEVEL_FIXED, ttu_attr->qos_level_fixed_l,
  QoS_RAMP_DISABLE, ttu_attr->qos_ramp_disable_l);

 REG_SET_3(DCN_SURF1_TTU_CNTL0, 0,
  REFCYC_PER_REQ_DELIVERY, ttu_attr->refcyc_per_req_delivery_c,
  QoS_LEVEL_FIXED, ttu_attr->qos_level_fixed_c,
  QoS_RAMP_DISABLE, ttu_attr->qos_ramp_disable_c);

 REG_SET_3(DCN_CUR0_TTU_CNTL0, 0,
  REFCYC_PER_REQ_DELIVERY, ttu_attr->refcyc_per_req_delivery_cur0,
  QoS_LEVEL_FIXED, ttu_attr->qos_level_fixed_cur0,
  QoS_RAMP_DISABLE, ttu_attr->qos_ramp_disable_cur0);
}
