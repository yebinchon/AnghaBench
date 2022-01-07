
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timing_generator {int ctx; } ;
struct drr_params {scalar_t__ vertical_total_max; scalar_t__ vertical_total_min; } ;
struct dce110_timing_generator {int dummy; } ;


 int CRTC_FORCE_LOCK_ON_EVENT ;
 int CRTC_FORCE_LOCK_TO_MASTER_VSYNC ;
 int CRTC_REG (int ) ;
 int CRTC_SET_V_TOTAL_MIN_MASK ;
 int CRTC_SET_V_TOTAL_MIN_MASK_EN ;
 int CRTC_V_TOTAL_CONTROL ;
 int CRTC_V_TOTAL_MAX ;
 int CRTC_V_TOTAL_MAX_SEL ;
 int CRTC_V_TOTAL_MIN ;
 int CRTC_V_TOTAL_MIN_SEL ;
 struct dce110_timing_generator* DCE110TG_FROM_TG (struct timing_generator*) ;
 int dm_read_reg (int ,int ) ;
 int dm_write_reg (int ,int ,int ) ;
 int mmCRTC_V_TOTAL_CONTROL ;
 int mmCRTC_V_TOTAL_MAX ;
 int mmCRTC_V_TOTAL_MIN ;
 int set_reg_field_value (int ,int,int ,int ) ;

void dce110_timing_generator_set_drr(
 struct timing_generator *tg,
 const struct drr_params *params)
{

 uint32_t v_total_min = 0;
 uint32_t v_total_max = 0;
 uint32_t v_total_cntl = 0;
 struct dce110_timing_generator *tg110 = DCE110TG_FROM_TG(tg);

 uint32_t addr = 0;

 addr = CRTC_REG(mmCRTC_V_TOTAL_MIN);
 v_total_min = dm_read_reg(tg->ctx, addr);

 addr = CRTC_REG(mmCRTC_V_TOTAL_MAX);
 v_total_max = dm_read_reg(tg->ctx, addr);

 addr = CRTC_REG(mmCRTC_V_TOTAL_CONTROL);
 v_total_cntl = dm_read_reg(tg->ctx, addr);

 if (params != ((void*)0) &&
  params->vertical_total_max > 0 &&
  params->vertical_total_min > 0) {

  set_reg_field_value(v_total_max,
    params->vertical_total_max - 1,
    CRTC_V_TOTAL_MAX,
    CRTC_V_TOTAL_MAX);

  set_reg_field_value(v_total_min,
    params->vertical_total_min - 1,
    CRTC_V_TOTAL_MIN,
    CRTC_V_TOTAL_MIN);

  set_reg_field_value(v_total_cntl,
    1,
    CRTC_V_TOTAL_CONTROL,
    CRTC_V_TOTAL_MIN_SEL);

  set_reg_field_value(v_total_cntl,
    1,
    CRTC_V_TOTAL_CONTROL,
    CRTC_V_TOTAL_MAX_SEL);

  set_reg_field_value(v_total_cntl,
    0,
    CRTC_V_TOTAL_CONTROL,
    CRTC_FORCE_LOCK_ON_EVENT);
  set_reg_field_value(v_total_cntl,
    0,
    CRTC_V_TOTAL_CONTROL,
    CRTC_FORCE_LOCK_TO_MASTER_VSYNC);

  set_reg_field_value(v_total_cntl,
    0,
    CRTC_V_TOTAL_CONTROL,
    CRTC_SET_V_TOTAL_MIN_MASK_EN);

  set_reg_field_value(v_total_cntl,
    0,
    CRTC_V_TOTAL_CONTROL,
    CRTC_SET_V_TOTAL_MIN_MASK);
 } else {
  set_reg_field_value(v_total_cntl,
   0,
   CRTC_V_TOTAL_CONTROL,
   CRTC_SET_V_TOTAL_MIN_MASK);
  set_reg_field_value(v_total_cntl,
    0,
    CRTC_V_TOTAL_CONTROL,
    CRTC_V_TOTAL_MIN_SEL);
  set_reg_field_value(v_total_cntl,
    0,
    CRTC_V_TOTAL_CONTROL,
    CRTC_V_TOTAL_MAX_SEL);
  set_reg_field_value(v_total_min,
    0,
    CRTC_V_TOTAL_MIN,
    CRTC_V_TOTAL_MIN);
  set_reg_field_value(v_total_max,
    0,
    CRTC_V_TOTAL_MAX,
    CRTC_V_TOTAL_MAX);
  set_reg_field_value(v_total_cntl,
    0,
    CRTC_V_TOTAL_CONTROL,
    CRTC_FORCE_LOCK_ON_EVENT);
  set_reg_field_value(v_total_cntl,
    0,
    CRTC_V_TOTAL_CONTROL,
    CRTC_FORCE_LOCK_TO_MASTER_VSYNC);
 }

 addr = CRTC_REG(mmCRTC_V_TOTAL_MIN);
 dm_write_reg(tg->ctx, addr, v_total_min);

 addr = CRTC_REG(mmCRTC_V_TOTAL_MAX);
 dm_write_reg(tg->ctx, addr, v_total_max);

 addr = CRTC_REG(mmCRTC_V_TOTAL_CONTROL);
 dm_write_reg(tg->ctx, addr, v_total_cntl);
}
