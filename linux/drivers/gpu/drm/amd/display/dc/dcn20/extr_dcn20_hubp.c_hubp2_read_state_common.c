
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hubp {int dummy; } ;
struct _vcs_dpi_display_rq_regs_st {int crq_expansion_mode; int mrq_expansion_mode; int prq_expansion_mode; int drq_expansion_mode; int plane1_base_address; } ;
struct _vcs_dpi_display_ttu_regs_st {int refcyc_per_req_delivery_pre_c; int qos_ramp_disable_c; int qos_level_fixed_c; int refcyc_per_req_delivery_c; int refcyc_per_req_delivery_pre_l; int qos_ramp_disable_l; int qos_level_fixed_l; int refcyc_per_req_delivery_l; int qos_level_flip; int min_ttu_vblank; int qos_level_high_wm; int qos_level_low_wm; } ;
struct _vcs_dpi_display_dlg_regs_st {int refcyc_per_meta_chunk_nom_c; int dst_y_per_meta_row_nom_c; int refcyc_per_pte_group_nom_c; int dst_y_per_pte_row_nom_c; int refcyc_per_meta_chunk_vblank_c; int refcyc_per_pte_group_vblank_c; int vratio_prefetch_c; int refcyc_per_line_delivery_c; int refcyc_per_line_delivery_l; int refcyc_per_line_delivery_pre_c; int refcyc_per_line_delivery_pre_l; int refcyc_per_meta_chunk_nom_l; int dst_y_per_meta_row_nom_l; int refcyc_per_pte_group_nom_l; int dst_y_per_pte_row_nom_l; int refcyc_per_meta_chunk_vblank_l; int refcyc_per_pte_group_vblank_l; int ref_freq_to_pix_freq; int dst_y_per_row_vblank; int dst_y_per_vm_vblank; int vratio_prefetch; int dst_y_prefetch; int dst_y_after_scaler; int refcyc_x_after_scaler; int refcyc_per_htotal; int min_dst_y_next_start; int dlg_vblank_end; int refcyc_h_blank_end; } ;
struct dcn_hubp_state {int qos_level_high_wm; int qos_level_low_wm; int min_ttu_vblank; int underflow_status; int ttu_disable; int blank_en; int dcc_en; int sw_mode; int h_mirror_en; int rotation_angle; int viewport_height; int viewport_width; int inuse_addr_lo; int inuse_addr_hi; int pixel_format; struct _vcs_dpi_display_rq_regs_st rq_regs; struct _vcs_dpi_display_ttu_regs_st ttu_attr; struct _vcs_dpi_display_dlg_regs_st dlg_attr; } ;
struct dcn20_hubp {struct dcn_hubp_state state; } ;


 int BLANK_OFFSET_0 ;
 int BLANK_OFFSET_1 ;
 int CRQ_EXPANSION_MODE ;
 int DCHUBP_CNTL ;
 int DCN_EXPANSION_MODE ;
 int DCN_GLOBAL_TTU_CNTL ;
 int DCN_SURF0_TTU_CNTL0 ;
 int DCN_SURF0_TTU_CNTL1 ;
 int DCN_SURF1_TTU_CNTL0 ;
 int DCN_SURF1_TTU_CNTL1 ;
 int DCN_TTU_QOS_WM ;
 int DCSURF_PRI_VIEWPORT_DIMENSION ;
 int DCSURF_SURFACE_CONFIG ;
 int DCSURF_SURFACE_CONTROL ;
 int DCSURF_SURFACE_EARLIEST_INUSE ;
 int DCSURF_SURFACE_EARLIEST_INUSE_HIGH ;
 int DCSURF_TILING_CONFIG ;
 int DET_BUF_PLANE1_BASE_ADDRESS ;
 int DLG_V_BLANK_END ;
 int DRQ_EXPANSION_MODE ;
 int DST_AFTER_SCALER ;
 int DST_DIMENSIONS ;
 int DST_Y_AFTER_SCALER ;
 int DST_Y_PER_META_ROW_NOM_C ;
 int DST_Y_PER_META_ROW_NOM_L ;
 int DST_Y_PER_PTE_ROW_NOM_C ;
 int DST_Y_PER_PTE_ROW_NOM_L ;
 int DST_Y_PER_ROW_VBLANK ;
 int DST_Y_PER_VM_VBLANK ;
 int DST_Y_PREFETCH ;
 int HUBPRET_CONTROL ;
 int HUBP_BLANK_EN ;
 int HUBP_TTU_DISABLE ;
 int HUBP_UNDERFLOW_STATUS ;
 int H_MIRROR_EN ;
 int MIN_DST_Y_NEXT_START ;
 int MIN_TTU_VBLANK ;
 int MRQ_EXPANSION_MODE ;
 int NOM_PARAMETERS_0 ;
 int NOM_PARAMETERS_1 ;
 int NOM_PARAMETERS_2 ;
 int NOM_PARAMETERS_3 ;
 int NOM_PARAMETERS_4 ;
 int NOM_PARAMETERS_5 ;
 int NOM_PARAMETERS_6 ;
 int NOM_PARAMETERS_7 ;
 int PER_LINE_DELIVERY ;
 int PER_LINE_DELIVERY_PRE ;
 int PREFETCH_SETTINGS ;
 int PREFETCH_SETTINGS_C ;
 int PREFETCH_SETTINS ;
 int PREFETCH_SETTINS_C ;
 int PRIMARY_SURFACE_DCC_EN ;
 int PRI_VIEWPORT_HEIGHT ;
 int PRI_VIEWPORT_WIDTH ;
 int PRQ_EXPANSION_MODE ;
 int QoS_LEVEL_FIXED ;
 int QoS_LEVEL_FLIP ;
 int QoS_LEVEL_HIGH_WM ;
 int QoS_LEVEL_LOW_WM ;
 int QoS_RAMP_DISABLE ;
 int REFCYC_H_BLANK_END ;
 int REFCYC_PER_HTOTAL ;
 int REFCYC_PER_LINE_DELIVERY_C ;
 int REFCYC_PER_LINE_DELIVERY_L ;
 int REFCYC_PER_LINE_DELIVERY_PRE_C ;
 int REFCYC_PER_LINE_DELIVERY_PRE_L ;
 int REFCYC_PER_META_CHUNK_NOM_C ;
 int REFCYC_PER_META_CHUNK_NOM_L ;
 int REFCYC_PER_META_CHUNK_VBLANK_C ;
 int REFCYC_PER_META_CHUNK_VBLANK_L ;
 int REFCYC_PER_PTE_GROUP_NOM_C ;
 int REFCYC_PER_PTE_GROUP_NOM_L ;
 int REFCYC_PER_PTE_GROUP_VBLANK_C ;
 int REFCYC_PER_PTE_GROUP_VBLANK_L ;
 int REFCYC_PER_REQ_DELIVERY ;
 int REFCYC_PER_REQ_DELIVERY_PRE ;
 int REFCYC_X_AFTER_SCALER ;
 int REF_FREQ_TO_PIX_FREQ ;
 scalar_t__ REG (int ) ;
 int REG_GET (int ,int ,int *) ;
 int REG_GET_2 (int ,int ,int *,int ,int *) ;
 int REG_GET_3 (int ,int ,int *,int ,int *,int ,int *) ;
 int REG_GET_4 (int ,int ,int *,int ,int *,int ,int *,int ,int *) ;
 int ROTATION_ANGLE ;
 int SURFACE_EARLIEST_INUSE_ADDRESS ;
 int SURFACE_EARLIEST_INUSE_ADDRESS_HIGH ;
 int SURFACE_PIXEL_FORMAT ;
 int SW_MODE ;
 struct dcn20_hubp* TO_DCN20_HUBP (struct hubp*) ;
 int VBLANK_PARAMETERS_0 ;
 int VBLANK_PARAMETERS_1 ;
 int VBLANK_PARAMETERS_2 ;
 int VBLANK_PARAMETERS_3 ;
 int VBLANK_PARAMETERS_4 ;
 int VRATIO_PREFETCH ;
 int VRATIO_PREFETCH_C ;

void hubp2_read_state_common(struct hubp *hubp)
{
 struct dcn20_hubp *hubp2 = TO_DCN20_HUBP(hubp);
 struct dcn_hubp_state *s = &hubp2->state;
 struct _vcs_dpi_display_dlg_regs_st *dlg_attr = &s->dlg_attr;
 struct _vcs_dpi_display_ttu_regs_st *ttu_attr = &s->ttu_attr;
 struct _vcs_dpi_display_rq_regs_st *rq_regs = &s->rq_regs;


 REG_GET(HUBPRET_CONTROL,
   DET_BUF_PLANE1_BASE_ADDRESS, &rq_regs->plane1_base_address);
 REG_GET_4(DCN_EXPANSION_MODE,
   DRQ_EXPANSION_MODE, &rq_regs->drq_expansion_mode,
   PRQ_EXPANSION_MODE, &rq_regs->prq_expansion_mode,
   MRQ_EXPANSION_MODE, &rq_regs->mrq_expansion_mode,
   CRQ_EXPANSION_MODE, &rq_regs->crq_expansion_mode);


 REG_GET_2(BLANK_OFFSET_0,
  REFCYC_H_BLANK_END, &dlg_attr->refcyc_h_blank_end,
  DLG_V_BLANK_END, &dlg_attr->dlg_vblank_end);

 REG_GET(BLANK_OFFSET_1,
  MIN_DST_Y_NEXT_START, &dlg_attr->min_dst_y_next_start);

 REG_GET(DST_DIMENSIONS,
  REFCYC_PER_HTOTAL, &dlg_attr->refcyc_per_htotal);

 REG_GET_2(DST_AFTER_SCALER,
  REFCYC_X_AFTER_SCALER, &dlg_attr->refcyc_x_after_scaler,
  DST_Y_AFTER_SCALER, &dlg_attr->dst_y_after_scaler);

 if (REG(PREFETCH_SETTINS))
  REG_GET_2(PREFETCH_SETTINS,
   DST_Y_PREFETCH, &dlg_attr->dst_y_prefetch,
   VRATIO_PREFETCH, &dlg_attr->vratio_prefetch);
 else
  REG_GET_2(PREFETCH_SETTINGS,
   DST_Y_PREFETCH, &dlg_attr->dst_y_prefetch,
   VRATIO_PREFETCH, &dlg_attr->vratio_prefetch);

 REG_GET_2(VBLANK_PARAMETERS_0,
  DST_Y_PER_VM_VBLANK, &dlg_attr->dst_y_per_vm_vblank,
  DST_Y_PER_ROW_VBLANK, &dlg_attr->dst_y_per_row_vblank);

 REG_GET(REF_FREQ_TO_PIX_FREQ,
  REF_FREQ_TO_PIX_FREQ, &dlg_attr->ref_freq_to_pix_freq);


 REG_GET(VBLANK_PARAMETERS_1,
  REFCYC_PER_PTE_GROUP_VBLANK_L, &dlg_attr->refcyc_per_pte_group_vblank_l);

 REG_GET(VBLANK_PARAMETERS_3,
  REFCYC_PER_META_CHUNK_VBLANK_L, &dlg_attr->refcyc_per_meta_chunk_vblank_l);

 if (REG(NOM_PARAMETERS_0))
  REG_GET(NOM_PARAMETERS_0,
   DST_Y_PER_PTE_ROW_NOM_L, &dlg_attr->dst_y_per_pte_row_nom_l);

 if (REG(NOM_PARAMETERS_1))
  REG_GET(NOM_PARAMETERS_1,
   REFCYC_PER_PTE_GROUP_NOM_L, &dlg_attr->refcyc_per_pte_group_nom_l);

 REG_GET(NOM_PARAMETERS_4,
  DST_Y_PER_META_ROW_NOM_L, &dlg_attr->dst_y_per_meta_row_nom_l);

 REG_GET(NOM_PARAMETERS_5,
  REFCYC_PER_META_CHUNK_NOM_L, &dlg_attr->refcyc_per_meta_chunk_nom_l);

 REG_GET_2(PER_LINE_DELIVERY_PRE,
  REFCYC_PER_LINE_DELIVERY_PRE_L, &dlg_attr->refcyc_per_line_delivery_pre_l,
  REFCYC_PER_LINE_DELIVERY_PRE_C, &dlg_attr->refcyc_per_line_delivery_pre_c);

 REG_GET_2(PER_LINE_DELIVERY,
  REFCYC_PER_LINE_DELIVERY_L, &dlg_attr->refcyc_per_line_delivery_l,
  REFCYC_PER_LINE_DELIVERY_C, &dlg_attr->refcyc_per_line_delivery_c);

 if (REG(PREFETCH_SETTINS_C))
  REG_GET(PREFETCH_SETTINS_C,
   VRATIO_PREFETCH_C, &dlg_attr->vratio_prefetch_c);
 else
  REG_GET(PREFETCH_SETTINGS_C,
   VRATIO_PREFETCH_C, &dlg_attr->vratio_prefetch_c);

 REG_GET(VBLANK_PARAMETERS_2,
  REFCYC_PER_PTE_GROUP_VBLANK_C, &dlg_attr->refcyc_per_pte_group_vblank_c);

 REG_GET(VBLANK_PARAMETERS_4,
  REFCYC_PER_META_CHUNK_VBLANK_C, &dlg_attr->refcyc_per_meta_chunk_vblank_c);

 if (REG(NOM_PARAMETERS_2))
  REG_GET(NOM_PARAMETERS_2,
   DST_Y_PER_PTE_ROW_NOM_C, &dlg_attr->dst_y_per_pte_row_nom_c);

 if (REG(NOM_PARAMETERS_3))
  REG_GET(NOM_PARAMETERS_3,
   REFCYC_PER_PTE_GROUP_NOM_C, &dlg_attr->refcyc_per_pte_group_nom_c);

 REG_GET(NOM_PARAMETERS_6,
  DST_Y_PER_META_ROW_NOM_C, &dlg_attr->dst_y_per_meta_row_nom_c);

 REG_GET(NOM_PARAMETERS_7,
  REFCYC_PER_META_CHUNK_NOM_C, &dlg_attr->refcyc_per_meta_chunk_nom_c);


 REG_GET_2(DCN_TTU_QOS_WM,
  QoS_LEVEL_LOW_WM, &ttu_attr->qos_level_low_wm,
  QoS_LEVEL_HIGH_WM, &ttu_attr->qos_level_high_wm);

 REG_GET_2(DCN_GLOBAL_TTU_CNTL,
  MIN_TTU_VBLANK, &ttu_attr->min_ttu_vblank,
  QoS_LEVEL_FLIP, &ttu_attr->qos_level_flip);




 REG_GET_3(DCN_SURF0_TTU_CNTL0,
  REFCYC_PER_REQ_DELIVERY, &ttu_attr->refcyc_per_req_delivery_l,
  QoS_LEVEL_FIXED, &ttu_attr->qos_level_fixed_l,
  QoS_RAMP_DISABLE, &ttu_attr->qos_ramp_disable_l);

 REG_GET(DCN_SURF0_TTU_CNTL1,
  REFCYC_PER_REQ_DELIVERY_PRE,
  &ttu_attr->refcyc_per_req_delivery_pre_l);

 REG_GET_3(DCN_SURF1_TTU_CNTL0,
  REFCYC_PER_REQ_DELIVERY, &ttu_attr->refcyc_per_req_delivery_c,
  QoS_LEVEL_FIXED, &ttu_attr->qos_level_fixed_c,
  QoS_RAMP_DISABLE, &ttu_attr->qos_ramp_disable_c);

 REG_GET(DCN_SURF1_TTU_CNTL1,
  REFCYC_PER_REQ_DELIVERY_PRE,
  &ttu_attr->refcyc_per_req_delivery_pre_c);


 REG_GET(DCSURF_SURFACE_CONFIG,
   SURFACE_PIXEL_FORMAT, &s->pixel_format);

 REG_GET(DCSURF_SURFACE_EARLIEST_INUSE_HIGH,
   SURFACE_EARLIEST_INUSE_ADDRESS_HIGH, &s->inuse_addr_hi);

 REG_GET(DCSURF_SURFACE_EARLIEST_INUSE,
   SURFACE_EARLIEST_INUSE_ADDRESS, &s->inuse_addr_lo);

 REG_GET_2(DCSURF_PRI_VIEWPORT_DIMENSION,
   PRI_VIEWPORT_WIDTH, &s->viewport_width,
   PRI_VIEWPORT_HEIGHT, &s->viewport_height);

 REG_GET_2(DCSURF_SURFACE_CONFIG,
   ROTATION_ANGLE, &s->rotation_angle,
   H_MIRROR_EN, &s->h_mirror_en);

 REG_GET(DCSURF_TILING_CONFIG,
   SW_MODE, &s->sw_mode);

 REG_GET(DCSURF_SURFACE_CONTROL,
   PRIMARY_SURFACE_DCC_EN, &s->dcc_en);

 REG_GET_3(DCHUBP_CNTL,
   HUBP_BLANK_EN, &s->blank_en,
   HUBP_TTU_DISABLE, &s->ttu_disable,
   HUBP_UNDERFLOW_STATUS, &s->underflow_status);

 REG_GET(DCN_GLOBAL_TTU_CNTL,
   MIN_TTU_VBLANK, &s->min_ttu_vblank);

 REG_GET_2(DCN_TTU_QOS_WM,
   QoS_LEVEL_LOW_WM, &s->qos_level_low_wm,
   QoS_LEVEL_HIGH_WM, &s->qos_level_high_wm);

}
