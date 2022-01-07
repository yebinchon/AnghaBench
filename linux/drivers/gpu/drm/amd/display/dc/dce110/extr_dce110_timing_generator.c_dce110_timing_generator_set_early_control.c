
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timing_generator {int ctx; } ;
struct dce110_timing_generator {int dummy; } ;


 int CRTC_CONTROL ;
 int CRTC_HBLANK_EARLY_CONTROL ;
 int CRTC_REG (int ) ;
 struct dce110_timing_generator* DCE110TG_FROM_TG (struct timing_generator*) ;
 int dm_read_reg (int ,int ) ;
 int dm_write_reg (int ,int ,int ) ;
 int mmCRTC_CONTROL ;
 int set_reg_field_value (int ,int ,int ,int ) ;

void dce110_timing_generator_set_early_control(
  struct timing_generator *tg,
  uint32_t early_cntl)
{
 uint32_t regval;
 struct dce110_timing_generator *tg110 = DCE110TG_FROM_TG(tg);
 uint32_t address = CRTC_REG(mmCRTC_CONTROL);

 regval = dm_read_reg(tg->ctx, address);
 set_reg_field_value(regval, early_cntl,
   CRTC_CONTROL, CRTC_HBLANK_EARLY_CONTROL);
 dm_write_reg(tg->ctx, address, regval);
}
