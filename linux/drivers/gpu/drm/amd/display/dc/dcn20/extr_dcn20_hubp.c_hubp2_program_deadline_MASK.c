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
struct hubp {int dummy; } ;
struct dcn20_hubp {int dummy; } ;
struct _vcs_dpi_display_ttu_regs_st {int /*<<< orphan*/  qos_ramp_disable_cur0; int /*<<< orphan*/  qos_level_fixed_cur0; int /*<<< orphan*/  refcyc_per_req_delivery_cur0; int /*<<< orphan*/  qos_ramp_disable_c; int /*<<< orphan*/  qos_level_fixed_c; int /*<<< orphan*/  refcyc_per_req_delivery_c; int /*<<< orphan*/  qos_ramp_disable_l; int /*<<< orphan*/  qos_level_fixed_l; int /*<<< orphan*/  refcyc_per_req_delivery_l; int /*<<< orphan*/  qos_level_high_wm; int /*<<< orphan*/  qos_level_low_wm; } ;
struct _vcs_dpi_display_dlg_regs_st {int /*<<< orphan*/  refcyc_per_pte_group_flip_l; int /*<<< orphan*/  refcyc_per_meta_chunk_nom_c; int /*<<< orphan*/  dst_y_per_meta_row_nom_c; int /*<<< orphan*/  refcyc_per_pte_group_nom_c; int /*<<< orphan*/  dst_y_per_pte_row_nom_c; int /*<<< orphan*/  refcyc_per_pte_group_vblank_c; int /*<<< orphan*/  refcyc_per_line_delivery_c; int /*<<< orphan*/  refcyc_per_line_delivery_l; int /*<<< orphan*/  refcyc_per_meta_chunk_nom_l; int /*<<< orphan*/  dst_y_per_meta_row_nom_l; int /*<<< orphan*/  refcyc_per_pte_group_nom_l; int /*<<< orphan*/  dst_y_per_pte_row_nom_l; int /*<<< orphan*/  refcyc_per_pte_group_vblank_l; int /*<<< orphan*/  ref_freq_to_pix_freq; int /*<<< orphan*/  dst_y_after_scaler; int /*<<< orphan*/  refcyc_x_after_scaler; int /*<<< orphan*/  refcyc_per_htotal; int /*<<< orphan*/  min_dst_y_next_start; int /*<<< orphan*/  dlg_vblank_end; int /*<<< orphan*/  refcyc_h_blank_end; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLANK_OFFSET_0 ; 
 int /*<<< orphan*/  BLANK_OFFSET_1 ; 
 int /*<<< orphan*/  DCN_CUR0_TTU_CNTL0 ; 
 int /*<<< orphan*/  DCN_SURF0_TTU_CNTL0 ; 
 int /*<<< orphan*/  DCN_SURF1_TTU_CNTL0 ; 
 int /*<<< orphan*/  DCN_TTU_QOS_WM ; 
 int /*<<< orphan*/  DLG_V_BLANK_END ; 
 int /*<<< orphan*/  DST_AFTER_SCALER ; 
 int /*<<< orphan*/  DST_DIMENSIONS ; 
 int /*<<< orphan*/  DST_Y_AFTER_SCALER ; 
 int /*<<< orphan*/  DST_Y_PER_META_ROW_NOM_C ; 
 int /*<<< orphan*/  DST_Y_PER_META_ROW_NOM_L ; 
 int /*<<< orphan*/  DST_Y_PER_PTE_ROW_NOM_C ; 
 int /*<<< orphan*/  DST_Y_PER_PTE_ROW_NOM_L ; 
 int /*<<< orphan*/  FLIP_PARAMETERS_1 ; 
 int /*<<< orphan*/  MIN_DST_Y_NEXT_START ; 
 int /*<<< orphan*/  NOM_PARAMETERS_0 ; 
 int /*<<< orphan*/  NOM_PARAMETERS_1 ; 
 int /*<<< orphan*/  NOM_PARAMETERS_2 ; 
 int /*<<< orphan*/  NOM_PARAMETERS_3 ; 
 int /*<<< orphan*/  NOM_PARAMETERS_4 ; 
 int /*<<< orphan*/  NOM_PARAMETERS_5 ; 
 int /*<<< orphan*/  NOM_PARAMETERS_6 ; 
 int /*<<< orphan*/  NOM_PARAMETERS_7 ; 
 int /*<<< orphan*/  PER_LINE_DELIVERY ; 
 int /*<<< orphan*/  QoS_LEVEL_FIXED ; 
 int /*<<< orphan*/  QoS_LEVEL_HIGH_WM ; 
 int /*<<< orphan*/  QoS_LEVEL_LOW_WM ; 
 int /*<<< orphan*/  QoS_RAMP_DISABLE ; 
 int /*<<< orphan*/  REFCYC_H_BLANK_END ; 
 int /*<<< orphan*/  REFCYC_PER_HTOTAL ; 
 int /*<<< orphan*/  REFCYC_PER_LINE_DELIVERY_C ; 
 int /*<<< orphan*/  REFCYC_PER_LINE_DELIVERY_L ; 
 int /*<<< orphan*/  REFCYC_PER_META_CHUNK_NOM_C ; 
 int /*<<< orphan*/  REFCYC_PER_META_CHUNK_NOM_L ; 
 int /*<<< orphan*/  REFCYC_PER_PTE_GROUP_FLIP_L ; 
 int /*<<< orphan*/  REFCYC_PER_PTE_GROUP_NOM_C ; 
 int /*<<< orphan*/  REFCYC_PER_PTE_GROUP_NOM_L ; 
 int /*<<< orphan*/  REFCYC_PER_PTE_GROUP_VBLANK_C ; 
 int /*<<< orphan*/  REFCYC_PER_PTE_GROUP_VBLANK_L ; 
 int /*<<< orphan*/  REFCYC_PER_REQ_DELIVERY ; 
 int /*<<< orphan*/  REFCYC_X_AFTER_SCALER ; 
 int /*<<< orphan*/  REF_FREQ_TO_PIX_FREQ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dcn20_hubp* FUNC4 (struct hubp*) ; 
 int /*<<< orphan*/  VBLANK_PARAMETERS_1 ; 
 int /*<<< orphan*/  VBLANK_PARAMETERS_2 ; 

void FUNC5(
		struct hubp *hubp,
		struct _vcs_dpi_display_dlg_regs_st *dlg_attr,
		struct _vcs_dpi_display_ttu_regs_st *ttu_attr)
{
	struct dcn20_hubp *hubp2 = FUNC4(hubp);

	/* DLG - Per hubp */
	FUNC2(BLANK_OFFSET_0, 0,
		REFCYC_H_BLANK_END, dlg_attr->refcyc_h_blank_end,
		DLG_V_BLANK_END, dlg_attr->dlg_vblank_end);

	FUNC1(BLANK_OFFSET_1, 0,
		MIN_DST_Y_NEXT_START, dlg_attr->min_dst_y_next_start);

	FUNC1(DST_DIMENSIONS, 0,
		REFCYC_PER_HTOTAL, dlg_attr->refcyc_per_htotal);

	FUNC2(DST_AFTER_SCALER, 0,
		REFCYC_X_AFTER_SCALER, dlg_attr->refcyc_x_after_scaler,
		DST_Y_AFTER_SCALER, dlg_attr->dst_y_after_scaler);

	FUNC1(REF_FREQ_TO_PIX_FREQ, 0,
		REF_FREQ_TO_PIX_FREQ, dlg_attr->ref_freq_to_pix_freq);

	/* DLG - Per luma/chroma */
	FUNC1(VBLANK_PARAMETERS_1, 0,
		REFCYC_PER_PTE_GROUP_VBLANK_L, dlg_attr->refcyc_per_pte_group_vblank_l);

	if (FUNC0(NOM_PARAMETERS_0))
		FUNC1(NOM_PARAMETERS_0, 0,
			DST_Y_PER_PTE_ROW_NOM_L, dlg_attr->dst_y_per_pte_row_nom_l);

	if (FUNC0(NOM_PARAMETERS_1))
		FUNC1(NOM_PARAMETERS_1, 0,
			REFCYC_PER_PTE_GROUP_NOM_L, dlg_attr->refcyc_per_pte_group_nom_l);

	FUNC1(NOM_PARAMETERS_4, 0,
		DST_Y_PER_META_ROW_NOM_L, dlg_attr->dst_y_per_meta_row_nom_l);

	FUNC1(NOM_PARAMETERS_5, 0,
		REFCYC_PER_META_CHUNK_NOM_L, dlg_attr->refcyc_per_meta_chunk_nom_l);

	FUNC2(PER_LINE_DELIVERY, 0,
		REFCYC_PER_LINE_DELIVERY_L, dlg_attr->refcyc_per_line_delivery_l,
		REFCYC_PER_LINE_DELIVERY_C, dlg_attr->refcyc_per_line_delivery_c);

	FUNC1(VBLANK_PARAMETERS_2, 0,
		REFCYC_PER_PTE_GROUP_VBLANK_C, dlg_attr->refcyc_per_pte_group_vblank_c);

	if (FUNC0(NOM_PARAMETERS_2))
		FUNC1(NOM_PARAMETERS_2, 0,
			DST_Y_PER_PTE_ROW_NOM_C, dlg_attr->dst_y_per_pte_row_nom_c);

	if (FUNC0(NOM_PARAMETERS_3))
		FUNC1(NOM_PARAMETERS_3, 0,
			REFCYC_PER_PTE_GROUP_NOM_C, dlg_attr->refcyc_per_pte_group_nom_c);

	FUNC1(NOM_PARAMETERS_6, 0,
		DST_Y_PER_META_ROW_NOM_C, dlg_attr->dst_y_per_meta_row_nom_c);

	FUNC1(NOM_PARAMETERS_7, 0,
		REFCYC_PER_META_CHUNK_NOM_C, dlg_attr->refcyc_per_meta_chunk_nom_c);

	/* TTU - per hubp */
	FUNC2(DCN_TTU_QOS_WM, 0,
		QoS_LEVEL_LOW_WM, ttu_attr->qos_level_low_wm,
		QoS_LEVEL_HIGH_WM, ttu_attr->qos_level_high_wm);

	/* TTU - per luma/chroma */
	/* Assumed surf0 is luma and 1 is chroma */

	FUNC3(DCN_SURF0_TTU_CNTL0, 0,
		REFCYC_PER_REQ_DELIVERY, ttu_attr->refcyc_per_req_delivery_l,
		QoS_LEVEL_FIXED, ttu_attr->qos_level_fixed_l,
		QoS_RAMP_DISABLE, ttu_attr->qos_ramp_disable_l);

	FUNC3(DCN_SURF1_TTU_CNTL0, 0,
		REFCYC_PER_REQ_DELIVERY, ttu_attr->refcyc_per_req_delivery_c,
		QoS_LEVEL_FIXED, ttu_attr->qos_level_fixed_c,
		QoS_RAMP_DISABLE, ttu_attr->qos_ramp_disable_c);

	FUNC3(DCN_CUR0_TTU_CNTL0, 0,
		REFCYC_PER_REQ_DELIVERY, ttu_attr->refcyc_per_req_delivery_cur0,
		QoS_LEVEL_FIXED, ttu_attr->qos_level_fixed_cur0,
		QoS_RAMP_DISABLE, ttu_attr->qos_ramp_disable_cur0);

	FUNC1(FLIP_PARAMETERS_1, 0,
		REFCYC_PER_PTE_GROUP_FLIP_L, dlg_attr->refcyc_per_pte_group_flip_l);
}