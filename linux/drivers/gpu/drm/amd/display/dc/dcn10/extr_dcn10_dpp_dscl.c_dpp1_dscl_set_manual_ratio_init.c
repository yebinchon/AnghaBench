
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int v_c_bot; int v_c; int v_bot; int v; int h_c; int h; } ;
struct TYPE_3__ {int vert_c; int horz_c; int vert; int horz; } ;
struct scaler_data {TYPE_2__ inits; TYPE_1__ ratios; } ;
struct dcn10_dpp {int dummy; } ;


 scalar_t__ REG (int ) ;
 int REG_SET (int ,int ,int ,int) ;
 int REG_SET_2 (int ,int ,int ,int,int ,int) ;
 int SCL_HORZ_FILTER_INIT ;
 int SCL_HORZ_FILTER_INIT_C ;
 int SCL_HORZ_FILTER_SCALE_RATIO ;
 int SCL_HORZ_FILTER_SCALE_RATIO_C ;
 int SCL_H_INIT_FRAC ;
 int SCL_H_INIT_FRAC_C ;
 int SCL_H_INIT_INT ;
 int SCL_H_INIT_INT_C ;
 int SCL_H_SCALE_RATIO ;
 int SCL_H_SCALE_RATIO_C ;
 int SCL_VERT_FILTER_INIT ;
 int SCL_VERT_FILTER_INIT_BOT ;
 int SCL_VERT_FILTER_INIT_BOT_C ;
 int SCL_VERT_FILTER_INIT_C ;
 int SCL_VERT_FILTER_SCALE_RATIO ;
 int SCL_VERT_FILTER_SCALE_RATIO_C ;
 int SCL_V_INIT_FRAC ;
 int SCL_V_INIT_FRAC_BOT ;
 int SCL_V_INIT_FRAC_BOT_C ;
 int SCL_V_INIT_FRAC_C ;
 int SCL_V_INIT_INT ;
 int SCL_V_INIT_INT_BOT ;
 int SCL_V_INIT_INT_BOT_C ;
 int SCL_V_INIT_INT_C ;
 int SCL_V_SCALE_RATIO ;
 int SCL_V_SCALE_RATIO_C ;
 int dc_fixpt_floor (int ) ;
 int dc_fixpt_u0d19 (int ) ;
 int dc_fixpt_u3d19 (int ) ;

__attribute__((used)) static void dpp1_dscl_set_manual_ratio_init(
  struct dcn10_dpp *dpp, const struct scaler_data *data)
{
 uint32_t init_frac = 0;
 uint32_t init_int = 0;

 REG_SET(SCL_HORZ_FILTER_SCALE_RATIO, 0,
   SCL_H_SCALE_RATIO, dc_fixpt_u3d19(data->ratios.horz) << 5);

 REG_SET(SCL_VERT_FILTER_SCALE_RATIO, 0,
   SCL_V_SCALE_RATIO, dc_fixpt_u3d19(data->ratios.vert) << 5);

 REG_SET(SCL_HORZ_FILTER_SCALE_RATIO_C, 0,
   SCL_H_SCALE_RATIO_C, dc_fixpt_u3d19(data->ratios.horz_c) << 5);

 REG_SET(SCL_VERT_FILTER_SCALE_RATIO_C, 0,
   SCL_V_SCALE_RATIO_C, dc_fixpt_u3d19(data->ratios.vert_c) << 5);




 init_frac = dc_fixpt_u0d19(data->inits.h) << 5;
 init_int = dc_fixpt_floor(data->inits.h);
 REG_SET_2(SCL_HORZ_FILTER_INIT, 0,
  SCL_H_INIT_FRAC, init_frac,
  SCL_H_INIT_INT, init_int);

 init_frac = dc_fixpt_u0d19(data->inits.h_c) << 5;
 init_int = dc_fixpt_floor(data->inits.h_c);
 REG_SET_2(SCL_HORZ_FILTER_INIT_C, 0,
  SCL_H_INIT_FRAC_C, init_frac,
  SCL_H_INIT_INT_C, init_int);

 init_frac = dc_fixpt_u0d19(data->inits.v) << 5;
 init_int = dc_fixpt_floor(data->inits.v);
 REG_SET_2(SCL_VERT_FILTER_INIT, 0,
  SCL_V_INIT_FRAC, init_frac,
  SCL_V_INIT_INT, init_int);

 if (REG(SCL_VERT_FILTER_INIT_BOT)) {
  init_frac = dc_fixpt_u0d19(data->inits.v_bot) << 5;
  init_int = dc_fixpt_floor(data->inits.v_bot);
  REG_SET_2(SCL_VERT_FILTER_INIT_BOT, 0,
   SCL_V_INIT_FRAC_BOT, init_frac,
   SCL_V_INIT_INT_BOT, init_int);
 }

 init_frac = dc_fixpt_u0d19(data->inits.v_c) << 5;
 init_int = dc_fixpt_floor(data->inits.v_c);
 REG_SET_2(SCL_VERT_FILTER_INIT_C, 0,
  SCL_V_INIT_FRAC_C, init_frac,
  SCL_V_INIT_INT_C, init_int);

 if (REG(SCL_VERT_FILTER_INIT_BOT_C)) {
  init_frac = dc_fixpt_u0d19(data->inits.v_c_bot) << 5;
  init_int = dc_fixpt_floor(data->inits.v_c_bot);
  REG_SET_2(SCL_VERT_FILTER_INIT_BOT_C, 0,
   SCL_V_INIT_FRAC_BOT_C, init_frac,
   SCL_V_INIT_INT_BOT_C, init_int);
 }
}
