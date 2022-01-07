
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct pll_settings {unsigned int actual_pix_clk_100hz; int use_external_clk; } ;
struct TYPE_9__ {int SUPPORT_YCBCR420; } ;
struct pixel_clk_params {unsigned int controller_id; TYPE_4__ flags; int color_depth; int signal_type; int encoder_object_id; } ;
struct dce110_clk_src {TYPE_5__* bios; } ;
struct clock_source {scalar_t__ id; TYPE_1__* ctx; } ;
struct TYPE_7__ {int SET_XTALIN_REF_SRC; int SUPPORT_YUV_420; int SET_GENLOCK_REF_DIV_SRC; } ;
struct bp_pixel_clock_parameters {unsigned int controller_id; scalar_t__ pll_id; unsigned int target_pixel_clock_100hz; TYPE_2__ flags; int signal_type; int encoder_object_id; int member_0; } ;
struct TYPE_10__ {TYPE_3__* funcs; } ;
struct TYPE_8__ {scalar_t__ (* set_pixel_clock ) (TYPE_5__*,struct bp_pixel_clock_parameters*) ;} ;
struct TYPE_6__ {scalar_t__ dce_version; int dce_environment; } ;


 scalar_t__ BP_RESULT_OK ;
 scalar_t__ CLOCK_SOURCE_ID_DP_DTO ;
 scalar_t__ CLOCK_SOURCE_ID_EXTERNAL ;
 unsigned int CONTROLLER_ID_D0 ;
 scalar_t__ DCE_VERSION_11_0 ;
 int DP_DTO0_ENABLE ;
 scalar_t__ IS_FPGA_MAXIMUS_DC (int ) ;
 int * MODULO ;
 int * PHASE ;
 int * PIXEL_RATE_CNTL ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_WRITE (int ,unsigned int) ;
 struct dce110_clk_src* TO_DCE110_CLK_SRC (struct clock_source*) ;
 int dc_is_dp_signal (int ) ;
 int dce112_program_pixel_clk_resync (struct dce110_clk_src*,int ,int ,int ) ;
 int disable_spread_spectrum (struct dce110_clk_src*) ;
 scalar_t__ stub1 (TYPE_5__*,struct bp_pixel_clock_parameters*) ;

__attribute__((used)) static bool dce112_program_pix_clk(
  struct clock_source *clock_source,
  struct pixel_clk_params *pix_clk_params,
  struct pll_settings *pll_settings)
{
 struct dce110_clk_src *clk_src = TO_DCE110_CLK_SRC(clock_source);
 struct bp_pixel_clock_parameters bp_pc_params = {0};
 if (clock_source->id != CLOCK_SOURCE_ID_EXTERNAL &&
   !dc_is_dp_signal(pix_clk_params->signal_type) &&
   clock_source->ctx->dce_version <= DCE_VERSION_11_0)
  disable_spread_spectrum(clk_src);


 bp_pc_params.controller_id = pix_clk_params->controller_id;
 bp_pc_params.pll_id = clock_source->id;
 bp_pc_params.target_pixel_clock_100hz = pll_settings->actual_pix_clk_100hz;
 bp_pc_params.encoder_object_id = pix_clk_params->encoder_object_id;
 bp_pc_params.signal_type = pix_clk_params->signal_type;

 if (clock_source->id != CLOCK_SOURCE_ID_DP_DTO) {
  bp_pc_params.flags.SET_GENLOCK_REF_DIV_SRC =
      pll_settings->use_external_clk;
  bp_pc_params.flags.SET_XTALIN_REF_SRC =
      !pll_settings->use_external_clk;
  if (pix_clk_params->flags.SUPPORT_YCBCR420) {
   bp_pc_params.flags.SUPPORT_YUV_420 = 1;
  }
 }
 if (clk_src->bios->funcs->set_pixel_clock(
   clk_src->bios, &bp_pc_params) != BP_RESULT_OK)
  return 0;

 if (clock_source->id != CLOCK_SOURCE_ID_DP_DTO)
  dce112_program_pixel_clk_resync(clk_src,
     pix_clk_params->signal_type,
     pix_clk_params->color_depth,
     pix_clk_params->flags.SUPPORT_YCBCR420);

 return 1;
}
