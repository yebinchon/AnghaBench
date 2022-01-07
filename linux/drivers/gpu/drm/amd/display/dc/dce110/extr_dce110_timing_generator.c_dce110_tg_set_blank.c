
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct timing_generator {int ctx; } ;
struct dce110_timing_generator {int dummy; } ;


 int CRTC_BLANK_CONTROL ;
 int CRTC_BLANK_DATA_DOUBLE_BUFFER_EN ;
 int CRTC_BLANK_DATA_EN ;
 int CRTC_DOUBLE_BUFFER_CONTROL ;
 int CRTC_REG (int ) ;
 struct dce110_timing_generator* DCE110TG_FROM_TG (struct timing_generator*) ;
 int dm_write_reg (int ,int ,scalar_t__) ;
 int mmCRTC_BLANK_CONTROL ;
 int mmCRTC_DOUBLE_BUFFER_CONTROL ;
 int set_reg_field_value (scalar_t__,int,int ,int ) ;

void dce110_tg_set_blank(struct timing_generator *tg,
  bool enable_blanking)
{
 struct dce110_timing_generator *tg110 = DCE110TG_FROM_TG(tg);
 uint32_t value = 0;

 set_reg_field_value(
  value,
  1,
  CRTC_DOUBLE_BUFFER_CONTROL,
  CRTC_BLANK_DATA_DOUBLE_BUFFER_EN);

 dm_write_reg(tg->ctx, CRTC_REG(mmCRTC_DOUBLE_BUFFER_CONTROL), value);
 value = 0;

 if (enable_blanking) {
  set_reg_field_value(
   value,
   1,
   CRTC_BLANK_CONTROL,
   CRTC_BLANK_DATA_EN);

  dm_write_reg(tg->ctx, CRTC_REG(mmCRTC_BLANK_CONTROL), value);

 } else
  dm_write_reg(tg->ctx, CRTC_REG(mmCRTC_BLANK_CONTROL), 0);
}
