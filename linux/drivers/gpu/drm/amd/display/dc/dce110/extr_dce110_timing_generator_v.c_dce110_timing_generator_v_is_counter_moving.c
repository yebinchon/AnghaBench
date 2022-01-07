
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct timing_generator {int ctx; } ;


 int CRTCV_STATUS_POSITION ;
 int CRTC_HORZ_COUNT ;
 int CRTC_VERT_COUNT ;
 scalar_t__ dm_read_reg (int ,int ) ;
 scalar_t__ get_reg_field_value (scalar_t__,int ,int ) ;
 int mmCRTCV_STATUS_POSITION ;

__attribute__((used)) static bool dce110_timing_generator_v_is_counter_moving(struct timing_generator *tg)
{
 uint32_t value;
 uint32_t h1 = 0;
 uint32_t h2 = 0;
 uint32_t v1 = 0;
 uint32_t v2 = 0;

 value = dm_read_reg(tg->ctx, mmCRTCV_STATUS_POSITION);

 h1 = get_reg_field_value(
   value,
   CRTCV_STATUS_POSITION,
   CRTC_HORZ_COUNT);

 v1 = get_reg_field_value(
   value,
   CRTCV_STATUS_POSITION,
   CRTC_VERT_COUNT);

 value = dm_read_reg(tg->ctx, mmCRTCV_STATUS_POSITION);

 h2 = get_reg_field_value(
   value,
   CRTCV_STATUS_POSITION,
   CRTC_HORZ_COUNT);

 v2 = get_reg_field_value(
   value,
   CRTCV_STATUS_POSITION,
   CRTC_VERT_COUNT);

 if (h1 == h2 && v1 == v2)
  return 0;
 else
  return 1;
}
