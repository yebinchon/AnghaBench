
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfer_func_reg {void* region_end; void* region_start; void* start_end_cntl2_r; void* start_end_cntl1_r; void* start_end_cntl2_g; void* start_end_cntl1_g; void* start_end_cntl2_b; void* start_end_cntl1_b; void* start_slope_cntl_r; void* start_slope_cntl_g; void* start_slope_cntl_b; void* start_cntl_r; void* start_cntl_g; void* start_cntl_b; } ;
struct pwl_params {int dummy; } ;
struct dpp {int dummy; } ;
struct TYPE_2__ {int ctx; } ;
struct dcn20_dpp {TYPE_1__ base; } ;


 int CM_BLNDGAM_RAMB_END_CNTL1_B ;
 int CM_BLNDGAM_RAMB_END_CNTL1_G ;
 int CM_BLNDGAM_RAMB_END_CNTL1_R ;
 int CM_BLNDGAM_RAMB_END_CNTL2_B ;
 int CM_BLNDGAM_RAMB_END_CNTL2_G ;
 int CM_BLNDGAM_RAMB_END_CNTL2_R ;
 int CM_BLNDGAM_RAMB_REGION_0_1 ;
 int CM_BLNDGAM_RAMB_REGION_32_33 ;
 int CM_BLNDGAM_RAMB_SLOPE_CNTL_B ;
 int CM_BLNDGAM_RAMB_SLOPE_CNTL_G ;
 int CM_BLNDGAM_RAMB_SLOPE_CNTL_R ;
 int CM_BLNDGAM_RAMB_START_CNTL_B ;
 int CM_BLNDGAM_RAMB_START_CNTL_G ;
 int CM_BLNDGAM_RAMB_START_CNTL_R ;
 void* REG (int ) ;
 struct dcn20_dpp* TO_DCN20_DPP (struct dpp*) ;
 int cm_helper_program_xfer_func (int ,struct pwl_params const*,struct xfer_func_reg*) ;
 int dcn20_dpp_cm_get_reg_field (struct dcn20_dpp*,struct xfer_func_reg*) ;

__attribute__((used)) static void dpp20_program_blnd_lutb_settings(
  struct dpp *dpp_base,
  const struct pwl_params *params)
{
 struct dcn20_dpp *dpp = TO_DCN20_DPP(dpp_base);
 struct xfer_func_reg gam_regs;

 dcn20_dpp_cm_get_reg_field(dpp, &gam_regs);

 gam_regs.start_cntl_b = REG(CM_BLNDGAM_RAMB_START_CNTL_B);
 gam_regs.start_cntl_g = REG(CM_BLNDGAM_RAMB_START_CNTL_G);
 gam_regs.start_cntl_r = REG(CM_BLNDGAM_RAMB_START_CNTL_R);
 gam_regs.start_slope_cntl_b = REG(CM_BLNDGAM_RAMB_SLOPE_CNTL_B);
 gam_regs.start_slope_cntl_g = REG(CM_BLNDGAM_RAMB_SLOPE_CNTL_G);
 gam_regs.start_slope_cntl_r = REG(CM_BLNDGAM_RAMB_SLOPE_CNTL_R);
 gam_regs.start_end_cntl1_b = REG(CM_BLNDGAM_RAMB_END_CNTL1_B);
 gam_regs.start_end_cntl2_b = REG(CM_BLNDGAM_RAMB_END_CNTL2_B);
 gam_regs.start_end_cntl1_g = REG(CM_BLNDGAM_RAMB_END_CNTL1_G);
 gam_regs.start_end_cntl2_g = REG(CM_BLNDGAM_RAMB_END_CNTL2_G);
 gam_regs.start_end_cntl1_r = REG(CM_BLNDGAM_RAMB_END_CNTL1_R);
 gam_regs.start_end_cntl2_r = REG(CM_BLNDGAM_RAMB_END_CNTL2_R);
 gam_regs.region_start = REG(CM_BLNDGAM_RAMB_REGION_0_1);
 gam_regs.region_end = REG(CM_BLNDGAM_RAMB_REGION_32_33);

 cm_helper_program_xfer_func(dpp->base.ctx, params, &gam_regs);
}
