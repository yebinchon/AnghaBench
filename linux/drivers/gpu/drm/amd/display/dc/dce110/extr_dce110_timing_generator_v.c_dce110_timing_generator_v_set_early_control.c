
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timing_generator {int ctx; } ;


 int CRTCV_CONTROL ;
 int CRTC_HBLANK_EARLY_CONTROL ;
 int dm_read_reg (int ,int ) ;
 int dm_write_reg (int ,int ,int ) ;
 int mmCRTC_CONTROL ;
 int set_reg_field_value (int ,int ,int ,int ) ;

__attribute__((used)) static void dce110_timing_generator_v_set_early_control(
  struct timing_generator *tg,
  uint32_t early_cntl)
{
 uint32_t regval;
 uint32_t address = mmCRTC_CONTROL;

 regval = dm_read_reg(tg->ctx, address);
 set_reg_field_value(regval, early_cntl,
   CRTCV_CONTROL, CRTC_HBLANK_EARLY_CONTROL);
 dm_write_reg(tg->ctx, address, regval);
}
