
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timing_generator {int ctx; } ;
struct dce110_timing_generator {int dummy; } ;
struct crtc_position {int vertical_count; int horizontal_count; } ;


 int CRTC_REG (int ) ;
 int CRTC_V_BLANK_END ;
 int CRTC_V_BLANK_START ;
 int CRTC_V_BLANK_START_END ;
 struct dce110_timing_generator* DCE110TG_FROM_TG (struct timing_generator*) ;
 int dce110_timing_generator_get_position (struct timing_generator*,struct crtc_position*) ;
 int dm_read_reg (int ,int ) ;
 int get_reg_field_value (int ,int ,int ) ;
 int mmCRTC_V_BLANK_START_END ;

void dce110_timing_generator_get_crtc_scanoutpos(
 struct timing_generator *tg,
 uint32_t *v_blank_start,
 uint32_t *v_blank_end,
 uint32_t *h_position,
 uint32_t *v_position)
{
 struct dce110_timing_generator *tg110 = DCE110TG_FROM_TG(tg);
 struct crtc_position position;

 uint32_t value = dm_read_reg(tg->ctx,
   CRTC_REG(mmCRTC_V_BLANK_START_END));

 *v_blank_start = get_reg_field_value(value,
          CRTC_V_BLANK_START_END,
          CRTC_V_BLANK_START);
 *v_blank_end = get_reg_field_value(value,
        CRTC_V_BLANK_START_END,
        CRTC_V_BLANK_END);

 dce110_timing_generator_get_position(
   tg, &position);

 *h_position = position.horizontal_count;
 *v_position = position.vertical_count;
}
