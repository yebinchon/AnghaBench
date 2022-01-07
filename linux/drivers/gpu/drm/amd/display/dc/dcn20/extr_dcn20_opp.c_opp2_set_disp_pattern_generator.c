
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct tg_color {int dummy; } ;
struct output_pixel_processor {int dummy; } ;
struct dcn20_opp {int dummy; } ;
typedef enum test_pattern_mode { ____Placeholder_test_pattern_mode } test_pattern_mode ;
typedef enum test_pattern_dyn_range { ____Placeholder_test_pattern_dyn_range } test_pattern_dyn_range ;
typedef enum test_pattern_color_format { ____Placeholder_test_pattern_color_format } test_pattern_color_format ;
typedef enum dc_color_depth { ____Placeholder_dc_color_depth } dc_color_depth ;
typedef enum controller_dp_test_pattern { ____Placeholder_controller_dp_test_pattern } controller_dp_test_pattern ;
 int DPG_ACTIVE_HEIGHT ;
 int DPG_ACTIVE_WIDTH ;
 int DPG_BIT_DEPTH ;
 int DPG_COLOUR0_B_CB ;
 int DPG_COLOUR0_G_Y ;
 int DPG_COLOUR0_R_CR ;
 int DPG_COLOUR1_B_CB ;
 int DPG_COLOUR1_G_Y ;
 int DPG_COLOUR1_R_CR ;
 int DPG_COLOUR_B_CB ;
 int DPG_COLOUR_G_Y ;
 int DPG_COLOUR_R_CR ;
 int DPG_CONTROL ;
 int DPG_DIMENSIONS ;
 int DPG_DYNAMIC_RANGE ;
 int DPG_EN ;
 int DPG_HRES ;
 int DPG_INC0 ;
 int DPG_INC1 ;
 int DPG_MODE ;
 int DPG_RAMP0_OFFSET ;
 int DPG_RAMP_CONTROL ;
 int DPG_VRES ;
 int REG_SET_2 (int ,int ,int ,int,int ,int) ;
 int REG_SET_3 (int ,int ,int ,int,int ,int,int ,int ) ;
 int REG_UPDATE_2 (int ,int ,int,int ,int) ;
 int REG_UPDATE_4 (int ,int ,int,int ,int,int ,int ,int ,int) ;
 int REG_UPDATE_6 (int ,int ,int,int ,int,int ,int,int ,int,int ,int,int ,int) ;
 int REG_WRITE (int ,int ) ;

 int TEST_PATTERN_COLOR_FORMAT_BPC_12 ;


 int TEST_PATTERN_DYN_RANGE_CEA ;
 int TEST_PATTERN_DYN_RANGE_VESA ;
 int TEST_PATTERN_MODE_COLORSQUARES_RGB ;
 int TEST_PATTERN_MODE_DUALRAMP_RGB ;
 int TEST_PATTERN_MODE_HORIZONTALBARS ;
 int TEST_PATTERN_MODE_SINGLERAMP_RGB ;
 int TEST_PATTERN_MODE_VERTICALBARS ;
 struct dcn20_opp* TO_DCN20_OPP (struct output_pixel_processor*) ;
 int opp2_dpg_set_blank_color (struct output_pixel_processor*,struct tg_color const*) ;

void opp2_set_disp_pattern_generator(
  struct output_pixel_processor *opp,
  enum controller_dp_test_pattern test_pattern,
  enum dc_color_depth color_depth,
  const struct tg_color *solid_color,
  int width,
  int height)
{
 struct dcn20_opp *oppn20 = TO_DCN20_OPP(opp);
 enum test_pattern_color_format bit_depth;
 enum test_pattern_dyn_range dyn_range;
 enum test_pattern_mode mode;


 uint32_t src_bpc = 16;

 uint32_t dst_bpc;
 uint32_t index;





 uint16_t src_color[6] = {0xFFFF, 0xFFFF, 0xFFFF, 0x0000,
      0x0000, 0x0000};

 uint16_t dst_color[6];
 uint32_t inc_base;


 switch (color_depth) {
 case 139:
  bit_depth = 129;
 break;
 case 138:
  bit_depth = 128;
 break;
 case 141:
  bit_depth = 130;
 break;
 case 140:
  bit_depth = TEST_PATTERN_COLOR_FORMAT_BPC_12;
 break;
 default:
  bit_depth = 128;
 break;
 }


 REG_SET_2(DPG_DIMENSIONS, 0,
  DPG_ACTIVE_WIDTH, width,
  DPG_ACTIVE_HEIGHT, height);

 switch (test_pattern) {
 case 136:
 case 135:
 {
  dyn_range = (test_pattern ==
    135 ?
    TEST_PATTERN_DYN_RANGE_CEA :
    TEST_PATTERN_DYN_RANGE_VESA);

  REG_UPDATE_6(DPG_CONTROL,
   DPG_EN, 1,
   DPG_MODE, TEST_PATTERN_MODE_COLORSQUARES_RGB,
   DPG_DYNAMIC_RANGE, dyn_range,
   DPG_BIT_DEPTH, bit_depth,
   DPG_VRES, 6,
   DPG_HRES, 6);
 }
 break;

 case 132:
 case 134:
 {
  mode = (test_pattern ==
   132 ?
   TEST_PATTERN_MODE_VERTICALBARS :
   TEST_PATTERN_MODE_HORIZONTALBARS);

  switch (bit_depth) {
  case 129:
   dst_bpc = 6;
  break;
  case 128:
   dst_bpc = 8;
  break;
  case 130:
   dst_bpc = 10;
  break;
  default:
   dst_bpc = 8;
  break;
  }


  for (index = 0; index < 6; index++) {



   dst_color[index] =
    src_color[index] >> (src_bpc - dst_bpc);





   dst_color[index] <<= (16 - dst_bpc);
  }

  REG_SET_2(DPG_COLOUR_R_CR, 0,
    DPG_COLOUR1_R_CR, dst_color[0],
    DPG_COLOUR0_R_CR, dst_color[3]);
  REG_SET_2(DPG_COLOUR_G_Y, 0,
    DPG_COLOUR1_G_Y, dst_color[1],
    DPG_COLOUR0_G_Y, dst_color[4]);
  REG_SET_2(DPG_COLOUR_B_CB, 0,
    DPG_COLOUR1_B_CB, dst_color[2],
    DPG_COLOUR0_B_CB, dst_color[5]);


  REG_UPDATE_6(DPG_CONTROL,
   DPG_EN, 1,
   DPG_MODE, mode,
   DPG_DYNAMIC_RANGE, 0,
   DPG_BIT_DEPTH, bit_depth,
   DPG_VRES, 0,
   DPG_HRES, 0);
 }
 break;

 case 137:
 {
  mode = (bit_depth ==
   130 ?
   TEST_PATTERN_MODE_DUALRAMP_RGB :
   TEST_PATTERN_MODE_SINGLERAMP_RGB);

  switch (bit_depth) {
  case 129:
   dst_bpc = 6;
  break;
  case 128:
   dst_bpc = 8;
  break;
  case 130:
   dst_bpc = 10;
  break;
  default:
   dst_bpc = 8;
  break;
  }





  inc_base = (src_bpc - dst_bpc);

  switch (bit_depth) {
  case 129:
  {
   REG_SET_3(DPG_RAMP_CONTROL, 0,
    DPG_RAMP0_OFFSET, 0,
    DPG_INC0, inc_base,
    DPG_INC1, 0);
   REG_UPDATE_2(DPG_CONTROL,
    DPG_VRES, 6,
    DPG_HRES, 6);
  }
  break;
  case 128:
  {
   REG_SET_3(DPG_RAMP_CONTROL, 0,
    DPG_RAMP0_OFFSET, 0,
    DPG_INC0, inc_base,
    DPG_INC1, 0);
   REG_UPDATE_2(DPG_CONTROL,
    DPG_VRES, 6,
    DPG_HRES, 8);
  }
  break;
  case 130:
  {
   REG_SET_3(DPG_RAMP_CONTROL, 0,
    DPG_RAMP0_OFFSET, 384 << 6,
    DPG_INC0, inc_base,
    DPG_INC1, inc_base + 2);
   REG_UPDATE_2(DPG_CONTROL,
    DPG_VRES, 5,
    DPG_HRES, 8);
  }
  break;
  default:
  break;
  }


  REG_UPDATE_4(DPG_CONTROL,
   DPG_EN, 1,
   DPG_MODE, mode,
   DPG_DYNAMIC_RANGE, 0,
   DPG_BIT_DEPTH, bit_depth);
 }
 break;
 case 131:
 {
  REG_WRITE(DPG_CONTROL, 0);
  REG_WRITE(DPG_COLOUR_R_CR, 0);
  REG_WRITE(DPG_COLOUR_G_Y, 0);
  REG_WRITE(DPG_COLOUR_B_CB, 0);
  REG_WRITE(DPG_RAMP_CONTROL, 0);
 }
 break;
 case 133:
 {
  opp2_dpg_set_blank_color(opp, solid_color);
  REG_UPDATE_2(DPG_CONTROL,
    DPG_EN, 1,
    DPG_MODE, TEST_PATTERN_MODE_HORIZONTALBARS);

  REG_SET_2(DPG_DIMENSIONS, 0,
    DPG_ACTIVE_WIDTH, width,
    DPG_ACTIVE_HEIGHT, height);
 }
 break;
 default:
  break;

 }
}
