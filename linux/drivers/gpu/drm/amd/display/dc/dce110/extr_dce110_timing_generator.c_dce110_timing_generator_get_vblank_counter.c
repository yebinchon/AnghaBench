
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timing_generator {int ctx; } ;
struct dce110_timing_generator {int dummy; } ;


 int CRTC_FRAME_COUNT ;
 int CRTC_REG (int ) ;
 int CRTC_STATUS_FRAME_COUNT ;
 struct dce110_timing_generator* DCE110TG_FROM_TG (struct timing_generator*) ;
 int dm_read_reg (int ,int ) ;
 int get_reg_field_value (int ,int ,int ) ;
 int mmCRTC_STATUS_FRAME_COUNT ;

uint32_t dce110_timing_generator_get_vblank_counter(struct timing_generator *tg)
{
 struct dce110_timing_generator *tg110 = DCE110TG_FROM_TG(tg);
 uint32_t addr = CRTC_REG(mmCRTC_STATUS_FRAME_COUNT);
 uint32_t value = dm_read_reg(tg->ctx, addr);
 uint32_t field = get_reg_field_value(
   value, CRTC_STATUS_FRAME_COUNT, CRTC_FRAME_COUNT);

 return field;
}
