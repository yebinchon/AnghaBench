
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct resource_pool {int pipe_count; struct hubp** hubps; } ;
struct hubp {int inst; TYPE_1__* funcs; } ;
struct _vcs_dpi_display_ttu_regs_st {int qos_ramp_disable_cur1; int qos_level_fixed_cur1; int qos_ramp_disable_cur0; int qos_level_fixed_cur0; int qos_ramp_disable_c; int qos_level_fixed_c; int qos_ramp_disable_l; int qos_level_fixed_l; int refcyc_per_req_delivery_pre_cur1; int refcyc_per_req_delivery_cur1; int refcyc_per_req_delivery_pre_cur0; int refcyc_per_req_delivery_cur0; int refcyc_per_req_delivery_c; int refcyc_per_req_delivery_pre_c; int refcyc_per_req_delivery_l; int refcyc_per_req_delivery_pre_l; int qos_level_flip; int min_ttu_vblank; int qos_level_high_wm; int qos_level_low_wm; } ;
struct _vcs_dpi_display_dlg_regs_st {int xfc_reg_remote_surface_flip_latency; int xfc_reg_precharge_delay; int xfc_reg_transfer_delay; int dst_y_delta_drq_limit; int vready_after_vcount0; int chunk_hdl_adjust_cur1; int dst_y_offset_cur1; int chunk_hdl_adjust_cur0; int refcyc_per_line_delivery_c; int refcyc_per_line_delivery_l; int refcyc_per_line_delivery_pre_c; int refcyc_per_line_delivery_pre_l; int refcyc_per_meta_chunk_nom_c; int refcyc_per_meta_chunk_nom_l; int dst_y_per_meta_row_nom_c; int dst_y_per_meta_row_nom_l; int refcyc_per_pte_group_nom_c; int refcyc_per_pte_group_nom_l; int dst_y_per_pte_row_nom_c; int dst_y_per_pte_row_nom_l; int refcyc_per_meta_chunk_flip_c; int refcyc_per_meta_chunk_flip_l; int refcyc_per_pte_group_flip_c; int refcyc_per_pte_group_flip_l; int refcyc_per_meta_chunk_vblank_c; int refcyc_per_meta_chunk_vblank_l; int refcyc_per_pte_group_vblank_c; int refcyc_per_pte_group_vblank_l; int vratio_prefetch_c; int vratio_prefetch; int ref_freq_to_pix_freq; int dst_y_per_row_flip; int dst_y_per_vm_flip; int dst_y_per_row_vblank; int dst_y_per_vm_vblank; int dst_y_prefetch; int dst_y_after_scaler; int refcyc_x_after_scaler; int refcyc_per_htotal; int min_dst_y_next_start; int dlg_vblank_end; int refcyc_h_blank_end; } ;
struct TYPE_7__ {int pte_row_height_linear; int swath_height; int mpte_group_size; int dpte_group_size; int min_meta_chunk_size; int meta_chunk_size; int min_chunk_size; int chunk_size; } ;
struct TYPE_6__ {int pte_row_height_linear; int swath_height; int mpte_group_size; int dpte_group_size; int min_meta_chunk_size; int meta_chunk_size; int min_chunk_size; int chunk_size; } ;
struct _vcs_dpi_display_rq_regs_st {TYPE_3__ rq_regs_c; TYPE_2__ rq_regs_l; int plane1_base_address; int crq_expansion_mode; int mrq_expansion_mode; int prq_expansion_mode; int drq_expansion_mode; } ;
struct dcn_hubp_state {int blank_en; struct _vcs_dpi_display_ttu_regs_st ttu_attr; struct _vcs_dpi_display_dlg_regs_st dlg_attr; struct _vcs_dpi_display_rq_regs_st rq_regs; int qos_level_high_wm; int qos_level_low_wm; int min_ttu_vblank; int underflow_status; int ttu_disable; int dcc_en; int sw_mode; int h_mirror_en; int rotation_angle; int viewport_height; int viewport_width; int inuse_addr_hi; int pixel_format; } ;
struct dc_context {int dummy; } ;
struct dc {struct resource_pool* res_pool; struct dc_context* ctx; } ;
struct TYPE_8__ {struct dcn_hubp_state state; } ;
struct TYPE_5__ {int (* hubp_read_state ) (struct hubp*) ;} ;


 int DTN_INFO (char*,...) ;
 int DTN_INFO_MICRO_SEC (int ) ;
 TYPE_4__* TO_DCN10_HUBP (struct hubp*) ;
 int stub1 (struct hubp*) ;

__attribute__((used)) static void dcn10_log_hubp_states(struct dc *dc, void *log_ctx)
{
 struct dc_context *dc_ctx = dc->ctx;
 struct resource_pool *pool = dc->res_pool;
 int i;

 DTN_INFO("HUBP:  format  addr_hi  width  height"
   "  rot  mir  sw_mode  dcc_en  blank_en  ttu_dis  underflow"
   "   min_ttu_vblank       qos_low_wm      qos_high_wm\n");
 for (i = 0; i < pool->pipe_count; i++) {
  struct hubp *hubp = pool->hubps[i];
  struct dcn_hubp_state *s = &(TO_DCN10_HUBP(hubp)->state);

  hubp->funcs->hubp_read_state(hubp);

  if (!s->blank_en) {
   DTN_INFO("[%2d]:  %5xh  %6xh  %5d  %6d  %2xh  %2xh  %6xh"
     "  %6d  %8d  %7d  %8xh",
     hubp->inst,
     s->pixel_format,
     s->inuse_addr_hi,
     s->viewport_width,
     s->viewport_height,
     s->rotation_angle,
     s->h_mirror_en,
     s->sw_mode,
     s->dcc_en,
     s->blank_en,
     s->ttu_disable,
     s->underflow_status);
   DTN_INFO_MICRO_SEC(s->min_ttu_vblank);
   DTN_INFO_MICRO_SEC(s->qos_level_low_wm);
   DTN_INFO_MICRO_SEC(s->qos_level_high_wm);
   DTN_INFO("\n");
  }
 }

 DTN_INFO("\n=========RQ========\n");
 DTN_INFO("HUBP:  drq_exp_m  prq_exp_m  mrq_exp_m  crq_exp_m  plane1_ba  L:chunk_s  min_chu_s  meta_ch_s"
  "  min_m_c_s  dpte_gr_s  mpte_gr_s  swath_hei  pte_row_h  C:chunk_s  min_chu_s  meta_ch_s"
  "  min_m_c_s  dpte_gr_s  mpte_gr_s  swath_hei  pte_row_h\n");
 for (i = 0; i < pool->pipe_count; i++) {
  struct dcn_hubp_state *s = &(TO_DCN10_HUBP(pool->hubps[i])->state);
  struct _vcs_dpi_display_rq_regs_st *rq_regs = &s->rq_regs;

  if (!s->blank_en)
   DTN_INFO("[%2d]:  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh\n",
    pool->hubps[i]->inst, rq_regs->drq_expansion_mode, rq_regs->prq_expansion_mode, rq_regs->mrq_expansion_mode,
    rq_regs->crq_expansion_mode, rq_regs->plane1_base_address, rq_regs->rq_regs_l.chunk_size,
    rq_regs->rq_regs_l.min_chunk_size, rq_regs->rq_regs_l.meta_chunk_size,
    rq_regs->rq_regs_l.min_meta_chunk_size, rq_regs->rq_regs_l.dpte_group_size,
    rq_regs->rq_regs_l.mpte_group_size, rq_regs->rq_regs_l.swath_height,
    rq_regs->rq_regs_l.pte_row_height_linear, rq_regs->rq_regs_c.chunk_size, rq_regs->rq_regs_c.min_chunk_size,
    rq_regs->rq_regs_c.meta_chunk_size, rq_regs->rq_regs_c.min_meta_chunk_size,
    rq_regs->rq_regs_c.dpte_group_size, rq_regs->rq_regs_c.mpte_group_size,
    rq_regs->rq_regs_c.swath_height, rq_regs->rq_regs_c.pte_row_height_linear);
 }

 DTN_INFO("========DLG========\n");
 DTN_INFO("HUBP:  rc_hbe     dlg_vbe    min_d_y_n  rc_per_ht  rc_x_a_s "
   "  dst_y_a_s  dst_y_pf   dst_y_vvb  dst_y_rvb  dst_y_vfl  dst_y_rfl  rf_pix_fq"
   "  vratio_pf  vrat_pf_c  rc_pg_vbl  rc_pg_vbc  rc_mc_vbl  rc_mc_vbc  rc_pg_fll"
   "  rc_pg_flc  rc_mc_fll  rc_mc_flc  pr_nom_l   pr_nom_c   rc_pg_nl   rc_pg_nc "
   "  mr_nom_l   mr_nom_c   rc_mc_nl   rc_mc_nc   rc_ld_pl   rc_ld_pc   rc_ld_l  "
   "  rc_ld_c    cha_cur0   ofst_cur1  cha_cur1   vr_af_vc0  ddrq_limt  x_rt_dlay"
   "  x_rp_dlay  x_rr_sfl\n");
 for (i = 0; i < pool->pipe_count; i++) {
  struct dcn_hubp_state *s = &(TO_DCN10_HUBP(pool->hubps[i])->state);
  struct _vcs_dpi_display_dlg_regs_st *dlg_regs = &s->dlg_attr;

  if (!s->blank_en)
   DTN_INFO("[%2d]:  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh"
    "%  8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh"
    "  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh\n",
    pool->hubps[i]->inst, dlg_regs->refcyc_h_blank_end, dlg_regs->dlg_vblank_end, dlg_regs->min_dst_y_next_start,
    dlg_regs->refcyc_per_htotal, dlg_regs->refcyc_x_after_scaler, dlg_regs->dst_y_after_scaler,
    dlg_regs->dst_y_prefetch, dlg_regs->dst_y_per_vm_vblank, dlg_regs->dst_y_per_row_vblank,
    dlg_regs->dst_y_per_vm_flip, dlg_regs->dst_y_per_row_flip, dlg_regs->ref_freq_to_pix_freq,
    dlg_regs->vratio_prefetch, dlg_regs->vratio_prefetch_c, dlg_regs->refcyc_per_pte_group_vblank_l,
    dlg_regs->refcyc_per_pte_group_vblank_c, dlg_regs->refcyc_per_meta_chunk_vblank_l,
    dlg_regs->refcyc_per_meta_chunk_vblank_c, dlg_regs->refcyc_per_pte_group_flip_l,
    dlg_regs->refcyc_per_pte_group_flip_c, dlg_regs->refcyc_per_meta_chunk_flip_l,
    dlg_regs->refcyc_per_meta_chunk_flip_c, dlg_regs->dst_y_per_pte_row_nom_l,
    dlg_regs->dst_y_per_pte_row_nom_c, dlg_regs->refcyc_per_pte_group_nom_l,
    dlg_regs->refcyc_per_pte_group_nom_c, dlg_regs->dst_y_per_meta_row_nom_l,
    dlg_regs->dst_y_per_meta_row_nom_c, dlg_regs->refcyc_per_meta_chunk_nom_l,
    dlg_regs->refcyc_per_meta_chunk_nom_c, dlg_regs->refcyc_per_line_delivery_pre_l,
    dlg_regs->refcyc_per_line_delivery_pre_c, dlg_regs->refcyc_per_line_delivery_l,
    dlg_regs->refcyc_per_line_delivery_c, dlg_regs->chunk_hdl_adjust_cur0, dlg_regs->dst_y_offset_cur1,
    dlg_regs->chunk_hdl_adjust_cur1, dlg_regs->vready_after_vcount0, dlg_regs->dst_y_delta_drq_limit,
    dlg_regs->xfc_reg_transfer_delay, dlg_regs->xfc_reg_precharge_delay,
    dlg_regs->xfc_reg_remote_surface_flip_latency);
 }

 DTN_INFO("========TTU========\n");
 DTN_INFO("HUBP:  qos_ll_wm  qos_lh_wm  mn_ttu_vb  qos_l_flp  rc_rd_p_l  rc_rd_l    rc_rd_p_c"
   "  rc_rd_c    rc_rd_c0   rc_rd_pc0  rc_rd_c1   rc_rd_pc1  qos_lf_l   qos_rds_l"
   "  qos_lf_c   qos_rds_c  qos_lf_c0  qos_rds_c0 qos_lf_c1  qos_rds_c1\n");
 for (i = 0; i < pool->pipe_count; i++) {
  struct dcn_hubp_state *s = &(TO_DCN10_HUBP(pool->hubps[i])->state);
  struct _vcs_dpi_display_ttu_regs_st *ttu_regs = &s->ttu_attr;

  if (!s->blank_en)
   DTN_INFO("[%2d]:  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh  %8xh\n",
    pool->hubps[i]->inst, ttu_regs->qos_level_low_wm, ttu_regs->qos_level_high_wm, ttu_regs->min_ttu_vblank,
    ttu_regs->qos_level_flip, ttu_regs->refcyc_per_req_delivery_pre_l, ttu_regs->refcyc_per_req_delivery_l,
    ttu_regs->refcyc_per_req_delivery_pre_c, ttu_regs->refcyc_per_req_delivery_c, ttu_regs->refcyc_per_req_delivery_cur0,
    ttu_regs->refcyc_per_req_delivery_pre_cur0, ttu_regs->refcyc_per_req_delivery_cur1,
    ttu_regs->refcyc_per_req_delivery_pre_cur1, ttu_regs->qos_level_fixed_l, ttu_regs->qos_ramp_disable_l,
    ttu_regs->qos_level_fixed_c, ttu_regs->qos_ramp_disable_c, ttu_regs->qos_level_fixed_cur0,
    ttu_regs->qos_ramp_disable_cur0, ttu_regs->qos_level_fixed_cur1, ttu_regs->qos_ramp_disable_cur1);
 }
 DTN_INFO("\n");
}
