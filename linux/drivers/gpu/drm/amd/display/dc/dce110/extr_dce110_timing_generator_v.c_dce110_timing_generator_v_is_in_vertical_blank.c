
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timing_generator {int ctx; } ;


 int CRTCV_STATUS ;
 int CRTC_V_BLANK ;
 int dm_read_reg (int ,int) ;
 int get_reg_field_value (int,int ,int ) ;
 int mmCRTCV_STATUS ;

__attribute__((used)) static bool dce110_timing_generator_v_is_in_vertical_blank(
  struct timing_generator *tg)
{
 uint32_t addr = 0;
 uint32_t value = 0;
 uint32_t field = 0;

 addr = mmCRTCV_STATUS;
 value = dm_read_reg(tg->ctx, addr);
 field = get_reg_field_value(value, CRTCV_STATUS, CRTC_V_BLANK);
 return field == 1;
}
