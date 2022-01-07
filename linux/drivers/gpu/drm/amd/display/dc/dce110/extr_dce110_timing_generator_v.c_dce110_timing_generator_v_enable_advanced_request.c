
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timing_generator {int ctx; } ;
struct dc_crtc_timing {int v_sync_width; int v_front_porch; } ;


 int CRTCV_START_LINE_CONTROL ;
 int CRTC_ADVANCED_START_LINE_POSITION ;
 int CRTC_LEGACY_REQUESTOR_EN ;
 int dm_read_reg (int ,int ) ;
 int dm_write_reg (int ,int ,int ) ;
 int mmCRTCV_START_LINE_CONTROL ;
 int set_reg_field_value (int ,int,int ,int ) ;

__attribute__((used)) static void dce110_timing_generator_v_enable_advanced_request(
 struct timing_generator *tg,
 bool enable,
 const struct dc_crtc_timing *timing)
{
 uint32_t addr = mmCRTCV_START_LINE_CONTROL;
 uint32_t value = dm_read_reg(tg->ctx, addr);

 if (enable) {
  if ((timing->v_sync_width + timing->v_front_porch) <= 3) {
   set_reg_field_value(
    value,
    3,
    CRTCV_START_LINE_CONTROL,
    CRTC_ADVANCED_START_LINE_POSITION);
  } else {
   set_reg_field_value(
    value,
    4,
    CRTCV_START_LINE_CONTROL,
    CRTC_ADVANCED_START_LINE_POSITION);
  }
  set_reg_field_value(
   value,
   0,
   CRTCV_START_LINE_CONTROL,
   CRTC_LEGACY_REQUESTOR_EN);
 } else {
  set_reg_field_value(
   value,
   2,
   CRTCV_START_LINE_CONTROL,
   CRTC_ADVANCED_START_LINE_POSITION);
  set_reg_field_value(
   value,
   1,
   CRTCV_START_LINE_CONTROL,
   CRTC_LEGACY_REQUESTOR_EN);
 }

 dm_write_reg(tg->ctx, addr, value);
}
