
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timing_generator {int ctx; } ;
struct dce110_timing_generator {int dummy; } ;


 int CRTC_BLANK_CONTROL ;
 int CRTC_BLANK_DATA_EN ;
 int CRTC_CURRENT_BLANK_STATE ;
 int CRTC_REG (int ) ;
 struct dce110_timing_generator* DCE110TG_FROM_TG (struct timing_generator*) ;
 int dm_read_reg (int ,int ) ;
 int get_reg_field_value (int ,int ,int ) ;
 int mmCRTC_BLANK_CONTROL ;

bool dce110_tg_is_blanked(struct timing_generator *tg)
{
 struct dce110_timing_generator *tg110 = DCE110TG_FROM_TG(tg);
 uint32_t value = dm_read_reg(tg->ctx, CRTC_REG(mmCRTC_BLANK_CONTROL));

 if (get_reg_field_value(
   value,
   CRTC_BLANK_CONTROL,
   CRTC_BLANK_DATA_EN) == 1 &&
  get_reg_field_value(
   value,
   CRTC_BLANK_CONTROL,
   CRTC_CURRENT_BLANK_STATE) == 1)
  return 1;
 return 0;
}
