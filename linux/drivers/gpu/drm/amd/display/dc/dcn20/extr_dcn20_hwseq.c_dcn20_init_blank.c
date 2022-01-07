
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint32_t ;
struct timing_generator {TYPE_1__* funcs; } ;
struct tg_color {int member_0; } ;
struct output_pixel_processor {TYPE_4__* funcs; } ;
struct dc {TYPE_3__* res_pool; } ;
typedef enum dc_color_space { ____Placeholder_dc_color_space } dc_color_space ;
struct TYPE_8__ {int (* opp_set_disp_pattern_generator ) (struct output_pixel_processor*,int ,int ,struct tg_color*,size_t,size_t) ;} ;
struct TYPE_7__ {struct output_pixel_processor** opps; TYPE_2__* res_cap; } ;
struct TYPE_6__ {size_t num_opp; } ;
struct TYPE_5__ {int (* get_optc_source ) (struct timing_generator*,size_t*,size_t*,size_t*) ;int (* get_otg_active_size ) (struct timing_generator*,size_t*,size_t*) ;} ;


 int ASSERT (int) ;
 int COLOR_DEPTH_UNDEFINED ;
 int COLOR_SPACE_SRGB ;
 int CONTROLLER_DP_TEST_PATTERN_SOLID_COLOR ;
 int color_space_to_black_color (struct dc*,int,struct tg_color*) ;
 int dcn20_hwss_wait_for_blank_complete (struct output_pixel_processor*) ;
 int stub1 (struct timing_generator*,size_t*,size_t*) ;
 int stub2 (struct timing_generator*,size_t*,size_t*,size_t*) ;
 int stub3 (struct output_pixel_processor*,int ,int ,struct tg_color*,size_t,size_t) ;
 int stub4 (struct output_pixel_processor*,int ,int ,struct tg_color*,size_t,size_t) ;

void dcn20_init_blank(
  struct dc *dc,
  struct timing_generator *tg)
{
 enum dc_color_space color_space;
 struct tg_color black_color = {0};
 struct output_pixel_processor *opp = ((void*)0);
 struct output_pixel_processor *bottom_opp = ((void*)0);
 uint32_t num_opps, opp_id_src0, opp_id_src1;
 uint32_t otg_active_width, otg_active_height;


 color_space = COLOR_SPACE_SRGB;
 color_space_to_black_color(dc, color_space, &black_color);


 tg->funcs->get_otg_active_size(tg,
   &otg_active_width,
   &otg_active_height);


 tg->funcs->get_optc_source(tg, &num_opps, &opp_id_src0, &opp_id_src1);
 ASSERT(opp_id_src0 < dc->res_pool->res_cap->num_opp);
 opp = dc->res_pool->opps[opp_id_src0];

 if (num_opps == 2) {
  otg_active_width = otg_active_width / 2;
  ASSERT(opp_id_src1 < dc->res_pool->res_cap->num_opp);
  bottom_opp = dc->res_pool->opps[opp_id_src1];
 }

 opp->funcs->opp_set_disp_pattern_generator(
   opp,
   CONTROLLER_DP_TEST_PATTERN_SOLID_COLOR,
   COLOR_DEPTH_UNDEFINED,
   &black_color,
   otg_active_width,
   otg_active_height);

 if (num_opps == 2) {
  bottom_opp->funcs->opp_set_disp_pattern_generator(
    bottom_opp,
    CONTROLLER_DP_TEST_PATTERN_SOLID_COLOR,
    COLOR_DEPTH_UNDEFINED,
    &black_color,
    otg_active_width,
    otg_active_height);
 }

 dcn20_hwss_wait_for_blank_complete(opp);
}
