
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct timing_generator {int dummy; } ;
struct optc {int dummy; } ;
typedef enum test_pattern_mode { ____Placeholder_test_pattern_mode } test_pattern_mode ;
typedef enum test_pattern_dyn_range { ____Placeholder_test_pattern_dyn_range } test_pattern_dyn_range ;
typedef enum test_pattern_color_format { ____Placeholder_test_pattern_color_format } test_pattern_color_format ;
typedef enum dc_color_depth { ____Placeholder_dc_color_depth } dc_color_depth ;
typedef enum controller_dp_test_pattern { ____Placeholder_controller_dp_test_pattern } controller_dp_test_pattern ;
 struct optc* DCN10TG_FROM_TG (struct timing_generator*) ;
 int OTG_TEST_PATTERN_COLOR ;
 int OTG_TEST_PATTERN_COLOR_FORMAT ;
 int OTG_TEST_PATTERN_CONTROL ;
 int OTG_TEST_PATTERN_DATA ;
 int OTG_TEST_PATTERN_DYNAMIC_RANGE ;
 int OTG_TEST_PATTERN_EN ;
 int OTG_TEST_PATTERN_HRES ;
 int OTG_TEST_PATTERN_INC0 ;
 int OTG_TEST_PATTERN_INC1 ;
 int OTG_TEST_PATTERN_MASK ;
 int OTG_TEST_PATTERN_MODE ;
 int OTG_TEST_PATTERN_PARAMETERS ;
 int OTG_TEST_PATTERN_RAMP0_OFFSET ;
 int OTG_TEST_PATTERN_VRES ;
 int REG_SET_2 (int ,int ,int ,int,int ,int) ;
 int REG_SET_4 (int ,int ,int ,int,int ,int,int ,int ,int ,int) ;
 int REG_UPDATE_2 (int ,int ,int,int ,int) ;
 int REG_UPDATE_4 (int ,int ,int,int ,int,int ,int,int ,int) ;
 int REG_UPDATE_5 (int ,int ,int,int ,int ,int ,int,int ,int,int ,int) ;
 int REG_WRITE (int ,int ) ;

 int TEST_PATTERN_COLOR_FORMAT_BPC_12 ;


 int TEST_PATTERN_DYN_RANGE_CEA ;
 int TEST_PATTERN_DYN_RANGE_VESA ;
 int TEST_PATTERN_MODE_COLORSQUARES_RGB ;
 int TEST_PATTERN_MODE_DUALRAMP_RGB ;
 int TEST_PATTERN_MODE_HORIZONTALBARS ;
 int TEST_PATTERN_MODE_SINGLERAMP_RGB ;
 int TEST_PATTERN_MODE_VERTICALBARS ;

__attribute__((used)) static void optc1_set_test_pattern(
 struct timing_generator *optc,



 enum controller_dp_test_pattern test_pattern,
 enum dc_color_depth color_depth)
{
 struct optc *optc1 = DCN10TG_FROM_TG(optc);
 enum test_pattern_color_format bit_depth;
 enum test_pattern_dyn_range dyn_range;
 enum test_pattern_mode mode;
 uint32_t pattern_mask;
 uint32_t pattern_data;

 uint32_t src_bpc = 16;

 uint32_t dst_bpc;
 uint32_t index;





 uint16_t src_color[6] = {0xFFFF, 0xFFFF, 0xFFFF, 0x0000,
      0x0000, 0x0000};

 uint16_t dst_color[6];
 uint32_t inc_base;


 switch (color_depth) {
 case 138:
  bit_depth = 129;
 break;
 case 137:
  bit_depth = 128;
 break;
 case 140:
  bit_depth = 130;
 break;
 case 139:
  bit_depth = TEST_PATTERN_COLOR_FORMAT_BPC_12;
 break;
 default:
  bit_depth = 128;
 break;
 }

 switch (test_pattern) {
 case 135:
 case 134:
 {
  dyn_range = (test_pattern ==
    134 ?
    TEST_PATTERN_DYN_RANGE_CEA :
    TEST_PATTERN_DYN_RANGE_VESA);
  mode = TEST_PATTERN_MODE_COLORSQUARES_RGB;

  REG_UPDATE_2(OTG_TEST_PATTERN_PARAMETERS,
    OTG_TEST_PATTERN_VRES, 6,
    OTG_TEST_PATTERN_HRES, 6);

  REG_UPDATE_4(OTG_TEST_PATTERN_CONTROL,
    OTG_TEST_PATTERN_EN, 1,
    OTG_TEST_PATTERN_MODE, mode,
    OTG_TEST_PATTERN_DYNAMIC_RANGE, dyn_range,
    OTG_TEST_PATTERN_COLOR_FORMAT, bit_depth);
 }
 break;

 case 132:
 case 133:
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

  REG_WRITE(OTG_TEST_PATTERN_PARAMETERS, 0);
  pattern_data = 0;
  for (index = 0; index < 6; index++) {



   pattern_mask = (1 << index);


   REG_SET_2(OTG_TEST_PATTERN_COLOR, 0,
     OTG_TEST_PATTERN_MASK, pattern_mask,
     OTG_TEST_PATTERN_DATA, pattern_data);




   pattern_data = dst_color[index];
  }



  REG_SET_2(OTG_TEST_PATTERN_COLOR, 0,
    OTG_TEST_PATTERN_MASK, pattern_mask,
    OTG_TEST_PATTERN_DATA, pattern_data);


  REG_UPDATE_4(OTG_TEST_PATTERN_CONTROL,
    OTG_TEST_PATTERN_EN, 1,
    OTG_TEST_PATTERN_MODE, mode,
    OTG_TEST_PATTERN_DYNAMIC_RANGE, 0,
    OTG_TEST_PATTERN_COLOR_FORMAT, bit_depth);
 }
 break;

 case 136:
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
   REG_UPDATE_5(OTG_TEST_PATTERN_PARAMETERS,
     OTG_TEST_PATTERN_INC0, inc_base,
     OTG_TEST_PATTERN_INC1, 0,
     OTG_TEST_PATTERN_HRES, 6,
     OTG_TEST_PATTERN_VRES, 6,
     OTG_TEST_PATTERN_RAMP0_OFFSET, 0);
  }
  break;
  case 128:
  {
   REG_UPDATE_5(OTG_TEST_PATTERN_PARAMETERS,
     OTG_TEST_PATTERN_INC0, inc_base,
     OTG_TEST_PATTERN_INC1, 0,
     OTG_TEST_PATTERN_HRES, 8,
     OTG_TEST_PATTERN_VRES, 6,
     OTG_TEST_PATTERN_RAMP0_OFFSET, 0);
  }
  break;
  case 130:
  {
   REG_UPDATE_5(OTG_TEST_PATTERN_PARAMETERS,
     OTG_TEST_PATTERN_INC0, inc_base,
     OTG_TEST_PATTERN_INC1, inc_base + 2,
     OTG_TEST_PATTERN_HRES, 8,
     OTG_TEST_PATTERN_VRES, 5,
     OTG_TEST_PATTERN_RAMP0_OFFSET, 384 << 6);
  }
  break;
  default:
  break;
  }

  REG_WRITE(OTG_TEST_PATTERN_COLOR, 0);


  REG_WRITE(OTG_TEST_PATTERN_CONTROL, 0);

  REG_SET_4(OTG_TEST_PATTERN_CONTROL, 0,
    OTG_TEST_PATTERN_EN, 1,
    OTG_TEST_PATTERN_MODE, mode,
    OTG_TEST_PATTERN_DYNAMIC_RANGE, 0,
    OTG_TEST_PATTERN_COLOR_FORMAT, bit_depth);
 }
 break;
 case 131:
 {
  REG_WRITE(OTG_TEST_PATTERN_CONTROL, 0);
  REG_WRITE(OTG_TEST_PATTERN_COLOR, 0);
  REG_WRITE(OTG_TEST_PATTERN_PARAMETERS, 0);
 }
 break;
 default:
  break;

 }
}
