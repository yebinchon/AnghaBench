
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timing_generator {int ctx; } ;


 int CRTCV_STATUS_FRAME_COUNT ;
 int CRTC_FRAME_COUNT ;
 int dm_read_reg (int ,int ) ;
 int get_reg_field_value (int ,int ,int ) ;
 int mmCRTCV_STATUS_FRAME_COUNT ;

__attribute__((used)) static uint32_t dce110_timing_generator_v_get_vblank_counter(struct timing_generator *tg)
{
 uint32_t addr = mmCRTCV_STATUS_FRAME_COUNT;
 uint32_t value = dm_read_reg(tg->ctx, addr);
 uint32_t field = get_reg_field_value(
   value, CRTCV_STATUS_FRAME_COUNT, CRTC_FRAME_COUNT);

 return field;
}
