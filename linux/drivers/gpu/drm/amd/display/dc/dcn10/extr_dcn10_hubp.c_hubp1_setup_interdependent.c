
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hubp {int dummy; } ;
struct dcn10_hubp {int dummy; } ;
struct _vcs_dpi_display_ttu_regs_st {int qos_level_flip; int min_ttu_vblank; int refcyc_per_req_delivery_pre_cur0; int refcyc_per_req_delivery_pre_c; int refcyc_per_req_delivery_pre_l; } ;
struct _vcs_dpi_display_dlg_regs_st {int refcyc_per_line_delivery_pre_c; int refcyc_per_line_delivery_pre_l; int refcyc_per_meta_chunk_vblank_c; int refcyc_per_meta_chunk_vblank_l; int dst_y_per_row_vblank; int dst_y_per_vm_vblank; int vratio_prefetch_c; int vratio_prefetch; int dst_y_prefetch; } ;


 int DCN_CUR0_TTU_CNTL1 ;
 int DCN_GLOBAL_TTU_CNTL ;
 int DCN_SURF0_TTU_CNTL1 ;
 int DCN_SURF1_TTU_CNTL1 ;
 int DST_Y_PER_ROW_VBLANK ;
 int DST_Y_PER_VM_VBLANK ;
 int DST_Y_PREFETCH ;
 int MIN_TTU_VBLANK ;
 int PER_LINE_DELIVERY_PRE ;
 int PREFETCH_SETTINS ;
 int PREFETCH_SETTINS_C ;
 int QoS_LEVEL_FLIP ;
 int REFCYC_PER_LINE_DELIVERY_PRE_C ;
 int REFCYC_PER_LINE_DELIVERY_PRE_L ;
 int REFCYC_PER_META_CHUNK_VBLANK_C ;
 int REFCYC_PER_META_CHUNK_VBLANK_L ;
 int REFCYC_PER_REQ_DELIVERY_PRE ;
 int REG_SET (int ,int ,int ,int ) ;
 int REG_SET_2 (int ,int ,int ,int ,int ,int ) ;
 struct dcn10_hubp* TO_DCN10_HUBP (struct hubp*) ;
 int VBLANK_PARAMETERS_0 ;
 int VBLANK_PARAMETERS_3 ;
 int VBLANK_PARAMETERS_4 ;
 int VRATIO_PREFETCH ;
 int VRATIO_PREFETCH_C ;

__attribute__((used)) static void hubp1_setup_interdependent(
  struct hubp *hubp,
  struct _vcs_dpi_display_dlg_regs_st *dlg_attr,
  struct _vcs_dpi_display_ttu_regs_st *ttu_attr)
{
 struct dcn10_hubp *hubp1 = TO_DCN10_HUBP(hubp);

 REG_SET_2(PREFETCH_SETTINS, 0,
  DST_Y_PREFETCH, dlg_attr->dst_y_prefetch,
  VRATIO_PREFETCH, dlg_attr->vratio_prefetch);

 REG_SET(PREFETCH_SETTINS_C, 0,
  VRATIO_PREFETCH_C, dlg_attr->vratio_prefetch_c);

 REG_SET_2(VBLANK_PARAMETERS_0, 0,
  DST_Y_PER_VM_VBLANK, dlg_attr->dst_y_per_vm_vblank,
  DST_Y_PER_ROW_VBLANK, dlg_attr->dst_y_per_row_vblank);

 REG_SET(VBLANK_PARAMETERS_3, 0,
  REFCYC_PER_META_CHUNK_VBLANK_L, dlg_attr->refcyc_per_meta_chunk_vblank_l);

 REG_SET(VBLANK_PARAMETERS_4, 0,
  REFCYC_PER_META_CHUNK_VBLANK_C, dlg_attr->refcyc_per_meta_chunk_vblank_c);

 REG_SET_2(PER_LINE_DELIVERY_PRE, 0,
  REFCYC_PER_LINE_DELIVERY_PRE_L, dlg_attr->refcyc_per_line_delivery_pre_l,
  REFCYC_PER_LINE_DELIVERY_PRE_C, dlg_attr->refcyc_per_line_delivery_pre_c);

 REG_SET(DCN_SURF0_TTU_CNTL1, 0,
  REFCYC_PER_REQ_DELIVERY_PRE,
  ttu_attr->refcyc_per_req_delivery_pre_l);
 REG_SET(DCN_SURF1_TTU_CNTL1, 0,
  REFCYC_PER_REQ_DELIVERY_PRE,
  ttu_attr->refcyc_per_req_delivery_pre_c);
 REG_SET(DCN_CUR0_TTU_CNTL1, 0,
  REFCYC_PER_REQ_DELIVERY_PRE, ttu_attr->refcyc_per_req_delivery_pre_cur0);

 REG_SET_2(DCN_GLOBAL_TTU_CNTL, 0,
  MIN_TTU_VBLANK, ttu_attr->min_ttu_vblank,
  QoS_LEVEL_FLIP, ttu_attr->qos_level_flip);
}
