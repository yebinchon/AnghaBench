
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ h_taps_c; scalar_t__ v_taps_c; scalar_t__ h_taps; scalar_t__ v_taps; } ;
struct scaler_data {scalar_t__ format; TYPE_4__ taps; int lb_params; int v_active; int h_active; int recout; } ;
struct dpp {TYPE_3__* ctx; } ;
struct dcn10_dpp {struct scaler_data scl_data; } ;
typedef enum lb_memory_config { ____Placeholder_lb_memory_config } lb_memory_config ;
typedef enum dscl_mode_sel { ____Placeholder_dscl_mode_sel } dscl_mode_sel ;
struct TYPE_7__ {TYPE_2__* dc; } ;
struct TYPE_5__ {int always_scale; } ;
struct TYPE_6__ {TYPE_1__ debug; } ;


 int AUTOCAL_MODE ;
 int AUTOCAL_MODE_OFF ;
 int AUTOCAL_NUM_PIPE ;
 int AUTOCAL_PIPE_ID ;
 int BLACK_OFFSET_CBCR ;
 int BLACK_OFFSET_RGB_Y ;
 int DSCL_AUTOCAL ;
 int DSCL_MODE ;
 int DSCL_MODE_DSCL_BYPASS ;
 int DSCL_MODE_SCALING_444_BYPASS ;
 int MPC_HEIGHT ;
 int MPC_SIZE ;
 int MPC_WIDTH ;
 int PERF_TRACE () ;
 scalar_t__ PIXEL_FORMAT_VIDEO_BEGIN ;
 scalar_t__ PIXEL_FORMAT_VIDEO_END ;
 scalar_t__ REG (int ) ;
 int REG_SET_2 (int ,int ,int ,int ,int ,int ) ;
 int REG_SET_3 (int ,int ,int ,int ,int ,int ,int ,int ) ;
 int REG_SET_4 (int ,int ,int ,scalar_t__,int ,scalar_t__,int ,scalar_t__,int ,scalar_t__) ;
 int REG_UPDATE (int ,int ,int) ;
 int SCL_BLACK_OFFSET ;
 int SCL_BLACK_OFFSET_CBCR ;
 int SCL_BLACK_OFFSET_RGB_Y ;
 int SCL_H_NUM_TAPS ;
 int SCL_H_NUM_TAPS_C ;
 int SCL_MODE ;
 int SCL_TAP_CONTROL ;
 int SCL_V_NUM_TAPS ;
 int SCL_V_NUM_TAPS_C ;
 struct dcn10_dpp* TO_DCN10_DPP (struct dpp*) ;
 int dpp1_dscl_find_lb_memory_config (struct dcn10_dpp*,struct scaler_data const*) ;
 int dpp1_dscl_get_dscl_mode (struct dpp*,struct scaler_data const*,int ) ;
 int dpp1_dscl_set_lb (struct dcn10_dpp*,int *,int) ;
 int dpp1_dscl_set_manual_ratio_init (struct dcn10_dpp*,struct scaler_data const*) ;
 int dpp1_dscl_set_recout (struct dcn10_dpp*,int *) ;
 int dpp1_dscl_set_scl_filter (struct dcn10_dpp*,struct scaler_data const*,int) ;
 scalar_t__ memcmp (struct scaler_data*,struct scaler_data const*,int) ;

void dpp1_dscl_set_scaler_manual_scale(
 struct dpp *dpp_base,
 const struct scaler_data *scl_data)
{
 enum lb_memory_config lb_config;
 struct dcn10_dpp *dpp = TO_DCN10_DPP(dpp_base);
 enum dscl_mode_sel dscl_mode = dpp1_dscl_get_dscl_mode(
   dpp_base, scl_data, dpp_base->ctx->dc->debug.always_scale);
 bool ycbcr = scl_data->format >= PIXEL_FORMAT_VIDEO_BEGIN
    && scl_data->format <= PIXEL_FORMAT_VIDEO_END;

 if (memcmp(&dpp->scl_data, scl_data, sizeof(*scl_data)) == 0)
  return;

 PERF_TRACE();

 dpp->scl_data = *scl_data;


 REG_SET_3(DSCL_AUTOCAL, 0,
  AUTOCAL_MODE, AUTOCAL_MODE_OFF,
  AUTOCAL_NUM_PIPE, 0,
  AUTOCAL_PIPE_ID, 0);


 dpp1_dscl_set_recout(dpp, &scl_data->recout);


 REG_SET_2(MPC_SIZE, 0,

    MPC_WIDTH, scl_data->h_active,

    MPC_HEIGHT, scl_data->v_active);


 REG_UPDATE(SCL_MODE, DSCL_MODE, dscl_mode);

 if (dscl_mode == DSCL_MODE_DSCL_BYPASS)
  return;


 lb_config = dpp1_dscl_find_lb_memory_config(dpp, scl_data);
 dpp1_dscl_set_lb(dpp, &scl_data->lb_params, lb_config);

 if (dscl_mode == DSCL_MODE_SCALING_444_BYPASS)
  return;


 if (REG(SCL_BLACK_OFFSET)) {
  if (ycbcr)
   REG_SET_2(SCL_BLACK_OFFSET, 0,
     SCL_BLACK_OFFSET_RGB_Y, BLACK_OFFSET_RGB_Y,
     SCL_BLACK_OFFSET_CBCR, BLACK_OFFSET_CBCR);
  else

   REG_SET_2(SCL_BLACK_OFFSET, 0,
     SCL_BLACK_OFFSET_RGB_Y, BLACK_OFFSET_RGB_Y,
     SCL_BLACK_OFFSET_CBCR, BLACK_OFFSET_RGB_Y);
 }


 dpp1_dscl_set_manual_ratio_init(dpp, scl_data);


 REG_SET_4(SCL_TAP_CONTROL, 0,
  SCL_V_NUM_TAPS, scl_data->taps.v_taps - 1,
  SCL_H_NUM_TAPS, scl_data->taps.h_taps - 1,
  SCL_V_NUM_TAPS_C, scl_data->taps.v_taps_c - 1,
  SCL_H_NUM_TAPS_C, scl_data->taps.h_taps_c - 1);

 dpp1_dscl_set_scl_filter(dpp, scl_data, ycbcr);
 PERF_TRACE();
}
