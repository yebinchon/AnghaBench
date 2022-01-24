#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct radeon_device {int dummy; } ;
struct ni_power_info {TYPE_1__* cac_weights; int /*<<< orphan*/  cac_configuration_required; int /*<<< orphan*/  enable_cac; } ;
struct TYPE_2__ {int /*<<< orphan*/  mc_write_weight; int /*<<< orphan*/  mc_read_weight; int /*<<< orphan*/  gpr; int /*<<< orphan*/  vsp0; int /*<<< orphan*/  vsp; int /*<<< orphan*/  ovr_val_spare_1; int /*<<< orphan*/  ovr_mode_spare_1; int /*<<< orphan*/  ovr_val_spare_0; int /*<<< orphan*/  ovr_mode_spare_0; int /*<<< orphan*/  weight_sq_gpr; int /*<<< orphan*/  weight_sq_vsp0; int /*<<< orphan*/  weight_sq_vsp; int /*<<< orphan*/  weight_spare1; int /*<<< orphan*/  weight_spare0; int /*<<< orphan*/  weight_uvd_sig1; int /*<<< orphan*/  weight_uvd_sig0; int /*<<< orphan*/  weight_dc_sig3; int /*<<< orphan*/  weight_dc_sig2; int /*<<< orphan*/  weight_dc_sig1; int /*<<< orphan*/  weight_dc_sig0; int /*<<< orphan*/  weight_vgt_sig2; int /*<<< orphan*/  weight_vgt_sig1; int /*<<< orphan*/  weight_vgt_sig0; int /*<<< orphan*/  weight_pa_sig1; int /*<<< orphan*/  weight_pa_sig0; int /*<<< orphan*/  weight_cp; int /*<<< orphan*/  weight_bif; int /*<<< orphan*/  weight_sc; int /*<<< orphan*/  weight_lds_sig1; int /*<<< orphan*/  weight_lds_sig0; int /*<<< orphan*/  weight_spi_sig5; int /*<<< orphan*/  weight_spi_sig4; int /*<<< orphan*/  weight_spi_sig3; int /*<<< orphan*/  weight_spi_sig2; int /*<<< orphan*/  weight_spi_sig1; int /*<<< orphan*/  weight_spi_sig0; int /*<<< orphan*/  weight_xbr_2; int /*<<< orphan*/  weight_xbr_1; int /*<<< orphan*/  weight_xbr_0; int /*<<< orphan*/  weight_sxs_sig1; int /*<<< orphan*/  weight_sxs_sig0; int /*<<< orphan*/  weight_sxm_sig2; int /*<<< orphan*/  weight_sxm_sig1; int /*<<< orphan*/  weight_sxm_sig0; int /*<<< orphan*/  weight_db_sig3; int /*<<< orphan*/  weight_db_sig2; int /*<<< orphan*/  weight_db_sig1; int /*<<< orphan*/  weight_db_sig0; int /*<<< orphan*/  weight_cb_en3; int /*<<< orphan*/  weight_cb_en2; int /*<<< orphan*/  weight_cb_en1; int /*<<< orphan*/  weight_cb_en0; int /*<<< orphan*/  weight_tcc_en2; int /*<<< orphan*/  weight_tcc_en1; int /*<<< orphan*/  weight_tcc_en0; int /*<<< orphan*/  weight_ta_sig; int /*<<< orphan*/  weight_tcp_sig1; int /*<<< orphan*/  weight_tcp_sig0; } ;

/* Variables and functions */
 int ALLOW_OVERFLOW ; 
 int /*<<< orphan*/  CG_CAC_REGION_1_WEIGHT_0 ; 
 int /*<<< orphan*/  CG_CAC_REGION_1_WEIGHT_1 ; 
 int /*<<< orphan*/  CG_CAC_REGION_2_WEIGHT_0 ; 
 int /*<<< orphan*/  CG_CAC_REGION_2_WEIGHT_1 ; 
 int /*<<< orphan*/  CG_CAC_REGION_2_WEIGHT_2 ; 
 int /*<<< orphan*/  CG_CAC_REGION_3_WEIGHT_0 ; 
 int /*<<< orphan*/  CG_CAC_REGION_3_WEIGHT_1 ; 
 int /*<<< orphan*/  CG_CAC_REGION_4_OVERRIDE_4 ; 
 int /*<<< orphan*/  CG_CAC_REGION_4_WEIGHT_0 ; 
 int /*<<< orphan*/  CG_CAC_REGION_4_WEIGHT_1 ; 
 int /*<<< orphan*/  CG_CAC_REGION_4_WEIGHT_2 ; 
 int /*<<< orphan*/  CG_CAC_REGION_4_WEIGHT_3 ; 
 int /*<<< orphan*/  CG_CAC_REGION_5_WEIGHT_0 ; 
 int /*<<< orphan*/  CG_CAC_REGION_5_WEIGHT_1 ; 
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int GPR_MASK ; 
 int FUNC1 (int) ; 
 int MCDW_WR_ENABLE ; 
 int MCDX_WR_ENABLE ; 
 int MCDY_WR_ENABLE ; 
 int MCDZ_WR_ENABLE ; 
 int /*<<< orphan*/  MC_CG_CONFIG ; 
 int /*<<< orphan*/  MC_CG_DATAPORT ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int OVR_MODE_SPARE_0_MASK ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int OVR_MODE_SPARE_1_MASK ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int OVR_VAL_SPARE_0_MASK ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int OVR_VAL_SPARE_1_MASK ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SQ_CAC_THRESHOLD ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int VSP0_MASK ; 
 int VSP_MASK ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int WEIGHT_BIF_MASK ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int WEIGHT_CB_EN0_MASK ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int WEIGHT_CB_EN1_MASK ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int WEIGHT_CB_EN2_MASK ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int WEIGHT_CB_EN3_MASK ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int WEIGHT_CP_MASK ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int WEIGHT_DB_SIG0_MASK ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int WEIGHT_DB_SIG1_MASK ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 int WEIGHT_DB_SIG2_MASK ; 
 int FUNC20 (int /*<<< orphan*/ ) ; 
 int WEIGHT_DB_SIG3_MASK ; 
 int FUNC21 (int /*<<< orphan*/ ) ; 
 int WEIGHT_DC_SIG0_MASK ; 
 int FUNC22 (int /*<<< orphan*/ ) ; 
 int WEIGHT_DC_SIG1_MASK ; 
 int FUNC23 (int /*<<< orphan*/ ) ; 
 int WEIGHT_DC_SIG2_MASK ; 
 int FUNC24 (int /*<<< orphan*/ ) ; 
 int WEIGHT_DC_SIG3_MASK ; 
 int FUNC25 (int /*<<< orphan*/ ) ; 
 int WEIGHT_LDS_SIG0_MASK ; 
 int FUNC26 (int /*<<< orphan*/ ) ; 
 int WEIGHT_LDS_SIG1_MASK ; 
 int FUNC27 (int /*<<< orphan*/ ) ; 
 int WEIGHT_PA_SIG0_MASK ; 
 int FUNC28 (int /*<<< orphan*/ ) ; 
 int WEIGHT_PA_SIG1_MASK ; 
 int FUNC29 (int /*<<< orphan*/ ) ; 
 int WEIGHT_SC_MASK ; 
 int FUNC30 (int /*<<< orphan*/ ) ; 
 int WEIGHT_SPARE0_MASK ; 
 int FUNC31 (int /*<<< orphan*/ ) ; 
 int WEIGHT_SPARE1_MASK ; 
 int FUNC32 (int /*<<< orphan*/ ) ; 
 int WEIGHT_SPI_SIG0_MASK ; 
 int FUNC33 (int /*<<< orphan*/ ) ; 
 int WEIGHT_SPI_SIG1_MASK ; 
 int FUNC34 (int /*<<< orphan*/ ) ; 
 int WEIGHT_SPI_SIG2_MASK ; 
 int FUNC35 (int /*<<< orphan*/ ) ; 
 int WEIGHT_SPI_SIG3_MASK ; 
 int FUNC36 (int /*<<< orphan*/ ) ; 
 int WEIGHT_SPI_SIG4_MASK ; 
 int FUNC37 (int /*<<< orphan*/ ) ; 
 int WEIGHT_SPI_SIG5_MASK ; 
 int FUNC38 (int /*<<< orphan*/ ) ; 
 int WEIGHT_SQ_GPR_MASK ; 
 int FUNC39 (int /*<<< orphan*/ ) ; 
 int FUNC40 (int /*<<< orphan*/ ) ; 
 int WEIGHT_SQ_VSP0_MASK ; 
 int WEIGHT_SQ_VSP_MASK ; 
 int FUNC41 (int /*<<< orphan*/ ) ; 
 int WEIGHT_SXM_SIG0_MASK ; 
 int FUNC42 (int /*<<< orphan*/ ) ; 
 int WEIGHT_SXM_SIG1_MASK ; 
 int FUNC43 (int /*<<< orphan*/ ) ; 
 int WEIGHT_SXM_SIG2_MASK ; 
 int FUNC44 (int /*<<< orphan*/ ) ; 
 int WEIGHT_SXS_SIG0_MASK ; 
 int FUNC45 (int /*<<< orphan*/ ) ; 
 int WEIGHT_SXS_SIG1_MASK ; 
 int FUNC46 (int /*<<< orphan*/ ) ; 
 int WEIGHT_TA_SIG_MASK ; 
 int FUNC47 (int /*<<< orphan*/ ) ; 
 int WEIGHT_TCC_EN0_MASK ; 
 int FUNC48 (int /*<<< orphan*/ ) ; 
 int WEIGHT_TCC_EN1_MASK ; 
 int FUNC49 (int /*<<< orphan*/ ) ; 
 int WEIGHT_TCC_EN2_MASK ; 
 int FUNC50 (int /*<<< orphan*/ ) ; 
 int WEIGHT_TCP_SIG0_MASK ; 
 int FUNC51 (int /*<<< orphan*/ ) ; 
 int WEIGHT_TCP_SIG1_MASK ; 
 int FUNC52 (int /*<<< orphan*/ ) ; 
 int WEIGHT_UVD_SIG0_MASK ; 
 int FUNC53 (int /*<<< orphan*/ ) ; 
 int WEIGHT_UVD_SIG1_MASK ; 
 int FUNC54 (int /*<<< orphan*/ ) ; 
 int WEIGHT_VGT_SIG0_MASK ; 
 int FUNC55 (int /*<<< orphan*/ ) ; 
 int WEIGHT_VGT_SIG1_MASK ; 
 int FUNC56 (int /*<<< orphan*/ ) ; 
 int WEIGHT_VGT_SIG2_MASK ; 
 int FUNC57 (int /*<<< orphan*/ ) ; 
 int WEIGHT_XBR_0_MASK ; 
 int FUNC58 (int /*<<< orphan*/ ) ; 
 int WEIGHT_XBR_1_MASK ; 
 int FUNC59 (int /*<<< orphan*/ ) ; 
 int WEIGHT_XBR_2_MASK ; 
 int /*<<< orphan*/  FUNC60 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC61 (int /*<<< orphan*/ ,int) ; 
 int FUNC62 (int /*<<< orphan*/ ) ; 
 struct ni_power_info* FUNC63 (struct radeon_device*) ; 

__attribute__((used)) static int FUNC64(struct radeon_device *rdev)
{
	struct ni_power_info *ni_pi = FUNC63(rdev);
	u32 reg;

	if (!ni_pi->enable_cac ||
	    !ni_pi->cac_configuration_required)
		return 0;

	if (ni_pi->cac_weights == NULL)
		return -EINVAL;

	reg = FUNC8(CG_CAC_REGION_1_WEIGHT_0) & ~(WEIGHT_TCP_SIG0_MASK |
						      WEIGHT_TCP_SIG1_MASK |
						      WEIGHT_TA_SIG_MASK);
	reg |= (FUNC50(ni_pi->cac_weights->weight_tcp_sig0) |
		FUNC51(ni_pi->cac_weights->weight_tcp_sig1) |
		FUNC46(ni_pi->cac_weights->weight_ta_sig));
	FUNC61(CG_CAC_REGION_1_WEIGHT_0, reg);

	reg = FUNC8(CG_CAC_REGION_1_WEIGHT_1) & ~(WEIGHT_TCC_EN0_MASK |
						      WEIGHT_TCC_EN1_MASK |
						      WEIGHT_TCC_EN2_MASK);
	reg |= (FUNC47(ni_pi->cac_weights->weight_tcc_en0) |
		FUNC48(ni_pi->cac_weights->weight_tcc_en1) |
		FUNC49(ni_pi->cac_weights->weight_tcc_en2));
	FUNC61(CG_CAC_REGION_1_WEIGHT_1, reg);

	reg = FUNC8(CG_CAC_REGION_2_WEIGHT_0) & ~(WEIGHT_CB_EN0_MASK |
						      WEIGHT_CB_EN1_MASK |
						      WEIGHT_CB_EN2_MASK |
						      WEIGHT_CB_EN3_MASK);
	reg |= (FUNC12(ni_pi->cac_weights->weight_cb_en0) |
		FUNC13(ni_pi->cac_weights->weight_cb_en1) |
		FUNC14(ni_pi->cac_weights->weight_cb_en2) |
		FUNC15(ni_pi->cac_weights->weight_cb_en3));
	FUNC61(CG_CAC_REGION_2_WEIGHT_0, reg);

	reg = FUNC8(CG_CAC_REGION_2_WEIGHT_1) & ~(WEIGHT_DB_SIG0_MASK |
						      WEIGHT_DB_SIG1_MASK |
						      WEIGHT_DB_SIG2_MASK |
						      WEIGHT_DB_SIG3_MASK);
	reg |= (FUNC17(ni_pi->cac_weights->weight_db_sig0) |
		FUNC18(ni_pi->cac_weights->weight_db_sig1) |
		FUNC19(ni_pi->cac_weights->weight_db_sig2) |
		FUNC20(ni_pi->cac_weights->weight_db_sig3));
	FUNC61(CG_CAC_REGION_2_WEIGHT_1, reg);

	reg = FUNC8(CG_CAC_REGION_2_WEIGHT_2) & ~(WEIGHT_SXM_SIG0_MASK |
						      WEIGHT_SXM_SIG1_MASK |
						      WEIGHT_SXM_SIG2_MASK |
						      WEIGHT_SXS_SIG0_MASK |
						      WEIGHT_SXS_SIG1_MASK);
	reg |= (FUNC41(ni_pi->cac_weights->weight_sxm_sig0) |
		FUNC42(ni_pi->cac_weights->weight_sxm_sig1) |
		FUNC43(ni_pi->cac_weights->weight_sxm_sig2) |
		FUNC44(ni_pi->cac_weights->weight_sxs_sig0) |
		FUNC45(ni_pi->cac_weights->weight_sxs_sig1));
	FUNC61(CG_CAC_REGION_2_WEIGHT_2, reg);

	reg = FUNC8(CG_CAC_REGION_3_WEIGHT_0) & ~(WEIGHT_XBR_0_MASK |
						      WEIGHT_XBR_1_MASK |
						      WEIGHT_XBR_2_MASK |
						      WEIGHT_SPI_SIG0_MASK);
	reg |= (FUNC57(ni_pi->cac_weights->weight_xbr_0) |
		FUNC58(ni_pi->cac_weights->weight_xbr_1) |
		FUNC59(ni_pi->cac_weights->weight_xbr_2) |
		FUNC32(ni_pi->cac_weights->weight_spi_sig0));
	FUNC61(CG_CAC_REGION_3_WEIGHT_0, reg);

	reg = FUNC8(CG_CAC_REGION_3_WEIGHT_1) & ~(WEIGHT_SPI_SIG1_MASK |
						      WEIGHT_SPI_SIG2_MASK |
						      WEIGHT_SPI_SIG3_MASK |
						      WEIGHT_SPI_SIG4_MASK |
						      WEIGHT_SPI_SIG5_MASK);
	reg |= (FUNC33(ni_pi->cac_weights->weight_spi_sig1) |
		FUNC34(ni_pi->cac_weights->weight_spi_sig2) |
		FUNC35(ni_pi->cac_weights->weight_spi_sig3) |
		FUNC36(ni_pi->cac_weights->weight_spi_sig4) |
		FUNC37(ni_pi->cac_weights->weight_spi_sig5));
	FUNC61(CG_CAC_REGION_3_WEIGHT_1, reg);

	reg = FUNC8(CG_CAC_REGION_4_WEIGHT_0) & ~(WEIGHT_LDS_SIG0_MASK |
						      WEIGHT_LDS_SIG1_MASK |
						      WEIGHT_SC_MASK);
	reg |= (FUNC25(ni_pi->cac_weights->weight_lds_sig0) |
		FUNC26(ni_pi->cac_weights->weight_lds_sig1) |
		FUNC29(ni_pi->cac_weights->weight_sc));
	FUNC61(CG_CAC_REGION_4_WEIGHT_0, reg);

	reg = FUNC8(CG_CAC_REGION_4_WEIGHT_1) & ~(WEIGHT_BIF_MASK |
						      WEIGHT_CP_MASK |
						      WEIGHT_PA_SIG0_MASK |
						      WEIGHT_PA_SIG1_MASK |
						      WEIGHT_VGT_SIG0_MASK);
	reg |= (FUNC11(ni_pi->cac_weights->weight_bif) |
		FUNC16(ni_pi->cac_weights->weight_cp) |
		FUNC27(ni_pi->cac_weights->weight_pa_sig0) |
		FUNC28(ni_pi->cac_weights->weight_pa_sig1) |
		FUNC54(ni_pi->cac_weights->weight_vgt_sig0));
	FUNC61(CG_CAC_REGION_4_WEIGHT_1, reg);

	reg = FUNC8(CG_CAC_REGION_4_WEIGHT_2) & ~(WEIGHT_VGT_SIG1_MASK |
						      WEIGHT_VGT_SIG2_MASK |
						      WEIGHT_DC_SIG0_MASK |
						      WEIGHT_DC_SIG1_MASK |
						      WEIGHT_DC_SIG2_MASK);
	reg |= (FUNC55(ni_pi->cac_weights->weight_vgt_sig1) |
		FUNC56(ni_pi->cac_weights->weight_vgt_sig2) |
		FUNC21(ni_pi->cac_weights->weight_dc_sig0) |
		FUNC22(ni_pi->cac_weights->weight_dc_sig1) |
		FUNC23(ni_pi->cac_weights->weight_dc_sig2));
	FUNC61(CG_CAC_REGION_4_WEIGHT_2, reg);

	reg = FUNC8(CG_CAC_REGION_4_WEIGHT_3) & ~(WEIGHT_DC_SIG3_MASK |
						      WEIGHT_UVD_SIG0_MASK |
						      WEIGHT_UVD_SIG1_MASK |
						      WEIGHT_SPARE0_MASK |
						      WEIGHT_SPARE1_MASK);
	reg |= (FUNC24(ni_pi->cac_weights->weight_dc_sig3) |
		FUNC52(ni_pi->cac_weights->weight_uvd_sig0) |
		FUNC53(ni_pi->cac_weights->weight_uvd_sig1) |
		FUNC30(ni_pi->cac_weights->weight_spare0) |
		FUNC31(ni_pi->cac_weights->weight_spare1));
	FUNC61(CG_CAC_REGION_4_WEIGHT_3, reg);

	reg = FUNC8(CG_CAC_REGION_5_WEIGHT_0) & ~(WEIGHT_SQ_VSP_MASK |
						      WEIGHT_SQ_VSP0_MASK);
	reg |= (FUNC39(ni_pi->cac_weights->weight_sq_vsp) |
		FUNC40(ni_pi->cac_weights->weight_sq_vsp0));
	FUNC61(CG_CAC_REGION_5_WEIGHT_0, reg);

	reg = FUNC8(CG_CAC_REGION_5_WEIGHT_1) & ~(WEIGHT_SQ_GPR_MASK);
	reg |= FUNC38(ni_pi->cac_weights->weight_sq_gpr);
	FUNC61(CG_CAC_REGION_5_WEIGHT_1, reg);

	reg = FUNC8(CG_CAC_REGION_4_OVERRIDE_4) & ~(OVR_MODE_SPARE_0_MASK |
							OVR_VAL_SPARE_0_MASK |
							OVR_MODE_SPARE_1_MASK |
							OVR_VAL_SPARE_1_MASK);
	reg |= (FUNC2(ni_pi->cac_weights->ovr_mode_spare_0) |
		FUNC4(ni_pi->cac_weights->ovr_val_spare_0) |
		FUNC3(ni_pi->cac_weights->ovr_mode_spare_1) |
		FUNC5(ni_pi->cac_weights->ovr_val_spare_1));
	FUNC61(CG_CAC_REGION_4_OVERRIDE_4, reg);

	reg = FUNC7(SQ_CAC_THRESHOLD) & ~(VSP_MASK |
					   VSP0_MASK |
					   GPR_MASK);
	reg |= (FUNC9(ni_pi->cac_weights->vsp) |
		FUNC10(ni_pi->cac_weights->vsp0) |
		FUNC0(ni_pi->cac_weights->gpr));
	FUNC60(SQ_CAC_THRESHOLD, reg);

	reg = (MCDW_WR_ENABLE |
	       MCDX_WR_ENABLE |
	       MCDY_WR_ENABLE |
	       MCDZ_WR_ENABLE |
	       FUNC1(0x09D4));
	FUNC60(MC_CG_CONFIG, reg);

	reg = (FUNC6(ni_pi->cac_weights->mc_read_weight) |
	       FUNC62(ni_pi->cac_weights->mc_write_weight) |
	       ALLOW_OVERFLOW);
	FUNC60(MC_CG_DATAPORT, reg);

	return 0;
}