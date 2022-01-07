
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timing_generator {int ctx; } ;
struct dce110_timing_generator {int dummy; } ;
struct dc_crtc_timing {int v_sync_width; int v_front_porch; } ;


 int CRTC_ADVANCED_START_LINE_POSITION ;
 int CRTC_INTERLACE_START_LINE_EARLY ;
 int CRTC_LEGACY_REQUESTOR_EN ;
 int CRTC_PREFETCH_EN ;
 int CRTC_PROGRESSIVE_START_LINE_EARLY ;
 int CRTC_REG (int ) ;
 int CRTC_START_LINE_CONTROL ;
 struct dce110_timing_generator* DCE110TG_FROM_TG (struct timing_generator*) ;
 int dm_read_reg (int ,int ) ;
 int dm_write_reg (int ,int ,int ) ;
 int mmCRTC_START_LINE_CONTROL ;
 int set_reg_field_value (int ,int,int ,int ) ;

__attribute__((used)) static void dce80_timing_generator_enable_advanced_request(
 struct timing_generator *tg,
 bool enable,
 const struct dc_crtc_timing *timing)
{
 struct dce110_timing_generator *tg110 = DCE110TG_FROM_TG(tg);
 uint32_t addr = CRTC_REG(mmCRTC_START_LINE_CONTROL);
 uint32_t value = dm_read_reg(tg->ctx, addr);

 if (enable) {
  set_reg_field_value(
   value,
   0,
   CRTC_START_LINE_CONTROL,
   CRTC_LEGACY_REQUESTOR_EN);
 } else {
  set_reg_field_value(
   value,
   1,
   CRTC_START_LINE_CONTROL,
   CRTC_LEGACY_REQUESTOR_EN);
 }

 if ((timing->v_sync_width + timing->v_front_porch) <= 3) {
  set_reg_field_value(
   value,
   3,
   CRTC_START_LINE_CONTROL,
   CRTC_ADVANCED_START_LINE_POSITION);
  set_reg_field_value(
   value,
   0,
   CRTC_START_LINE_CONTROL,
   CRTC_PREFETCH_EN);
 } else {
  set_reg_field_value(
   value,
   4,
   CRTC_START_LINE_CONTROL,
   CRTC_ADVANCED_START_LINE_POSITION);
  set_reg_field_value(
   value,
   1,
   CRTC_START_LINE_CONTROL,
   CRTC_PREFETCH_EN);
 }

 set_reg_field_value(
  value,
  1,
  CRTC_START_LINE_CONTROL,
  CRTC_PROGRESSIVE_START_LINE_EARLY);

 set_reg_field_value(
  value,
  1,
  CRTC_START_LINE_CONTROL,
  CRTC_INTERLACE_START_LINE_EARLY);

 dm_write_reg(tg->ctx, addr, value);
}
