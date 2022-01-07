
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct timing_generator {int ctx; } ;
struct TYPE_2__ {int crtc; } ;
struct dce110_timing_generator {TYPE_1__ offsets; } ;
struct crtc_position {int vertical_count; int horizontal_count; } ;


 int CRTC0_CRTC_V_BLANK_START_END ;
 int CRTC_V_BLANK_END ;
 int CRTC_V_BLANK_START ;
 struct dce110_timing_generator* DCE110TG_FROM_TG (struct timing_generator*) ;
 int dce120_timing_generator_get_crtc_position (struct timing_generator*,struct crtc_position*) ;
 int dm_read_reg_soc15 (int ,int ,int ) ;
 int get_reg_field_value (int ,int ,int ) ;
 int mmCRTC0_CRTC_V_BLANK_START_END ;

void dce120_timing_generator_get_crtc_scanoutpos(
 struct timing_generator *tg,
 uint32_t *v_blank_start,
 uint32_t *v_blank_end,
 uint32_t *h_position,
 uint32_t *v_position)
{
 struct dce110_timing_generator *tg110 = DCE110TG_FROM_TG(tg);
 struct crtc_position position;

 uint32_t v_blank_start_end = dm_read_reg_soc15(
   tg->ctx,
   mmCRTC0_CRTC_V_BLANK_START_END,
   tg110->offsets.crtc);

 *v_blank_start = get_reg_field_value(v_blank_start_end,
          CRTC0_CRTC_V_BLANK_START_END,
          CRTC_V_BLANK_START);
 *v_blank_end = get_reg_field_value(v_blank_start_end,
        CRTC0_CRTC_V_BLANK_START_END,
        CRTC_V_BLANK_END);

 dce120_timing_generator_get_crtc_position(
   tg, &position);

 *h_position = position.horizontal_count;
 *v_position = position.vertical_count;
}
