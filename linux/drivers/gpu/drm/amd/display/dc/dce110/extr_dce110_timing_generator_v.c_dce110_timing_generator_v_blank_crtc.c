
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timing_generator {int ctx; } ;


 int CRTCV_BLANK_CONTROL ;
 int CRTC_BLANK_DATA_EN ;
 int CRTC_BLANK_DE_MODE ;
 int dm_read_reg (int ,int ) ;
 int dm_write_reg (int ,int ,int ) ;
 int mmCRTCV_BLANK_CONTROL ;
 int set_reg_field_value (int ,int,int ,int ) ;

__attribute__((used)) static void dce110_timing_generator_v_blank_crtc(struct timing_generator *tg)
{
 uint32_t addr = mmCRTCV_BLANK_CONTROL;
 uint32_t value = dm_read_reg(tg->ctx, addr);

 set_reg_field_value(
  value,
  1,
  CRTCV_BLANK_CONTROL,
  CRTC_BLANK_DATA_EN);

 set_reg_field_value(
  value,
  0,
  CRTCV_BLANK_CONTROL,
  CRTC_BLANK_DE_MODE);

 dm_write_reg(tg->ctx, addr, value);
}
