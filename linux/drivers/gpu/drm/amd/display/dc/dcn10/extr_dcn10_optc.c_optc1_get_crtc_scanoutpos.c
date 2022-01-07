
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timing_generator {int dummy; } ;
struct optc {int dummy; } ;
struct crtc_position {int vertical_count; int horizontal_count; } ;


 struct optc* DCN10TG_FROM_TG (struct timing_generator*) ;
 int OTG_V_BLANK_END ;
 int OTG_V_BLANK_START ;
 int OTG_V_BLANK_START_END ;
 int REG_GET_2 (int ,int ,int *,int ,int *) ;
 int optc1_get_position (struct timing_generator*,struct crtc_position*) ;

void optc1_get_crtc_scanoutpos(
 struct timing_generator *optc,
 uint32_t *v_blank_start,
 uint32_t *v_blank_end,
 uint32_t *h_position,
 uint32_t *v_position)
{
 struct optc *optc1 = DCN10TG_FROM_TG(optc);
 struct crtc_position position;

 REG_GET_2(OTG_V_BLANK_START_END,
   OTG_V_BLANK_START, v_blank_start,
   OTG_V_BLANK_END, v_blank_end);

 optc1_get_position(optc, &position);

 *h_position = position.horizontal_count;
 *v_position = position.vertical_count;
}
