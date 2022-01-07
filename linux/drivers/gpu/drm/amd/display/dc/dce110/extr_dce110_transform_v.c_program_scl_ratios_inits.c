
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_10__ {int integer; int fraction; } ;
struct TYPE_9__ {int integer; int fraction; } ;
struct TYPE_8__ {int integer; int fraction; } ;
struct TYPE_7__ {int integer; int fraction; } ;
struct sclv_ratios_inits {TYPE_5__ v_init_chroma; TYPE_4__ h_init_chroma; TYPE_3__ v_init_luma; TYPE_2__ h_init_luma; int v_int_scale_ratio_chroma; int h_int_scale_ratio_chroma; int v_int_scale_ratio_luma; int h_int_scale_ratio_luma; } ;
struct TYPE_6__ {struct dc_context* ctx; } ;
struct dce_transform {TYPE_1__ base; } ;
struct dc_context {int dummy; } ;


 int SCLV_HORZ_FILTER_INIT ;
 int SCLV_HORZ_FILTER_INIT_C ;
 int SCLV_HORZ_FILTER_SCALE_RATIO ;
 int SCLV_HORZ_FILTER_SCALE_RATIO_C ;
 int SCLV_VERT_FILTER_INIT ;
 int SCLV_VERT_FILTER_INIT_C ;
 int SCLV_VERT_FILTER_SCALE_RATIO ;
 int SCLV_VERT_FILTER_SCALE_RATIO_C ;
 int SCL_H_INIT_FRAC ;
 int SCL_H_INIT_FRAC_C ;
 int SCL_H_INIT_INT ;
 int SCL_H_INIT_INT_C ;
 int SCL_H_SCALE_RATIO ;
 int SCL_H_SCALE_RATIO_C ;
 int SCL_V_INIT_FRAC ;
 int SCL_V_INIT_FRAC_C ;
 int SCL_V_INIT_INT ;
 int SCL_V_INIT_INT_C ;
 int SCL_V_SCALE_RATIO ;
 int SCL_V_SCALE_RATIO_C ;
 int dm_write_reg (struct dc_context*,scalar_t__,scalar_t__) ;
 scalar_t__ mmSCLV_HORZ_FILTER_INIT ;
 scalar_t__ mmSCLV_HORZ_FILTER_INIT_C ;
 scalar_t__ mmSCLV_HORZ_FILTER_SCALE_RATIO ;
 scalar_t__ mmSCLV_HORZ_FILTER_SCALE_RATIO_C ;
 scalar_t__ mmSCLV_VERT_FILTER_INIT ;
 scalar_t__ mmSCLV_VERT_FILTER_INIT_C ;
 scalar_t__ mmSCLV_VERT_FILTER_SCALE_RATIO ;
 scalar_t__ mmSCLV_VERT_FILTER_SCALE_RATIO_C ;
 int set_reg_field_value (scalar_t__,int ,int ,int ) ;

__attribute__((used)) static void program_scl_ratios_inits(
 struct dce_transform *xfm_dce,
 struct sclv_ratios_inits *inits)
{
 struct dc_context *ctx = xfm_dce->base.ctx;
 uint32_t addr = mmSCLV_HORZ_FILTER_SCALE_RATIO;
 uint32_t value = 0;

 set_reg_field_value(
  value,
  inits->h_int_scale_ratio_luma,
  SCLV_HORZ_FILTER_SCALE_RATIO,
  SCL_H_SCALE_RATIO);
 dm_write_reg(ctx, addr, value);

 addr = mmSCLV_VERT_FILTER_SCALE_RATIO;
 value = 0;
 set_reg_field_value(
  value,
  inits->v_int_scale_ratio_luma,
  SCLV_VERT_FILTER_SCALE_RATIO,
  SCL_V_SCALE_RATIO);
 dm_write_reg(ctx, addr, value);

 addr = mmSCLV_HORZ_FILTER_SCALE_RATIO_C;
 value = 0;
 set_reg_field_value(
  value,
  inits->h_int_scale_ratio_chroma,
  SCLV_HORZ_FILTER_SCALE_RATIO_C,
  SCL_H_SCALE_RATIO_C);
 dm_write_reg(ctx, addr, value);

 addr = mmSCLV_VERT_FILTER_SCALE_RATIO_C;
 value = 0;
 set_reg_field_value(
  value,
  inits->v_int_scale_ratio_chroma,
  SCLV_VERT_FILTER_SCALE_RATIO_C,
  SCL_V_SCALE_RATIO_C);
 dm_write_reg(ctx, addr, value);

 addr = mmSCLV_HORZ_FILTER_INIT;
 value = 0;
 set_reg_field_value(
  value,
  inits->h_init_luma.fraction,
  SCLV_HORZ_FILTER_INIT,
  SCL_H_INIT_FRAC);
 set_reg_field_value(
  value,
  inits->h_init_luma.integer,
  SCLV_HORZ_FILTER_INIT,
  SCL_H_INIT_INT);
 dm_write_reg(ctx, addr, value);

 addr = mmSCLV_VERT_FILTER_INIT;
 value = 0;
 set_reg_field_value(
  value,
  inits->v_init_luma.fraction,
  SCLV_VERT_FILTER_INIT,
  SCL_V_INIT_FRAC);
 set_reg_field_value(
  value,
  inits->v_init_luma.integer,
  SCLV_VERT_FILTER_INIT,
  SCL_V_INIT_INT);
 dm_write_reg(ctx, addr, value);

 addr = mmSCLV_HORZ_FILTER_INIT_C;
 value = 0;
 set_reg_field_value(
  value,
  inits->h_init_chroma.fraction,
  SCLV_HORZ_FILTER_INIT_C,
  SCL_H_INIT_FRAC_C);
 set_reg_field_value(
  value,
  inits->h_init_chroma.integer,
  SCLV_HORZ_FILTER_INIT_C,
  SCL_H_INIT_INT_C);
 dm_write_reg(ctx, addr, value);

 addr = mmSCLV_VERT_FILTER_INIT_C;
 value = 0;
 set_reg_field_value(
  value,
  inits->v_init_chroma.fraction,
  SCLV_VERT_FILTER_INIT_C,
  SCL_V_INIT_FRAC_C);
 set_reg_field_value(
  value,
  inits->v_init_chroma.integer,
  SCLV_VERT_FILTER_INIT_C,
  SCL_V_INIT_INT_C);
 dm_write_reg(ctx, addr, value);
}
