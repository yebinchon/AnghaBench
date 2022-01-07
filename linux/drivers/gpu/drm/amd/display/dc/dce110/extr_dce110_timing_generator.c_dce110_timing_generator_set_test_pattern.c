
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct timing_generator {struct dc_context* ctx; } ;
struct dce110_timing_generator {int dummy; } ;
struct dc_context {int dummy; } ;
typedef enum test_pattern_mode { ____Placeholder_test_pattern_mode } test_pattern_mode ;
typedef enum test_pattern_dyn_range { ____Placeholder_test_pattern_dyn_range } test_pattern_dyn_range ;
typedef enum test_pattern_color_format { ____Placeholder_test_pattern_color_format } test_pattern_color_format ;
typedef enum dc_color_depth { ____Placeholder_dc_color_depth } dc_color_depth ;
typedef enum controller_dp_test_pattern { ____Placeholder_controller_dp_test_pattern } controller_dp_test_pattern ;
 int CRTC_REG (int ) ;
 int CRTC_TEST_PATTERN_COLOR ;
 int CRTC_TEST_PATTERN_COLOR_FORMAT ;
 int CRTC_TEST_PATTERN_CONTROL ;
 int CRTC_TEST_PATTERN_DATA ;
 int CRTC_TEST_PATTERN_DYNAMIC_RANGE ;
 int CRTC_TEST_PATTERN_EN ;
 int CRTC_TEST_PATTERN_HRES ;
 int CRTC_TEST_PATTERN_INC0 ;
 int CRTC_TEST_PATTERN_INC1 ;
 int CRTC_TEST_PATTERN_MASK ;
 int CRTC_TEST_PATTERN_MODE ;
 int CRTC_TEST_PATTERN_PARAMETERS ;
 int CRTC_TEST_PATTERN_RAMP0_OFFSET ;
 int CRTC_TEST_PATTERN_VRES ;
 struct dce110_timing_generator* DCE110TG_FROM_TG (struct timing_generator*) ;

 int TEST_PATTERN_COLOR_FORMAT_BPC_12 ;


 int TEST_PATTERN_DYN_RANGE_CEA ;
 int TEST_PATTERN_DYN_RANGE_VESA ;
 int TEST_PATTERN_MODE_COLORSQUARES_RGB ;
 int TEST_PATTERN_MODE_DUALRAMP_RGB ;
 int TEST_PATTERN_MODE_HORIZONTALBARS ;
 int TEST_PATTERN_MODE_SINGLERAMP_RGB ;
 int TEST_PATTERN_MODE_VERTICALBARS ;
 int dm_write_reg (struct dc_context*,int,int) ;
 int mmCRTC_TEST_PATTERN_COLOR ;
 int mmCRTC_TEST_PATTERN_CONTROL ;
 int mmCRTC_TEST_PATTERN_PARAMETERS ;
 int set_reg_field_value (int,int,int ,int ) ;

void dce110_timing_generator_set_test_pattern(
 struct timing_generator *tg,



 enum controller_dp_test_pattern test_pattern,
 enum dc_color_depth color_depth)
{
 struct dc_context *ctx = tg->ctx;
 uint32_t value;
 uint32_t addr;
 struct dce110_timing_generator *tg110 = DCE110TG_FROM_TG(tg);
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
  value = 0;
  addr = CRTC_REG(mmCRTC_TEST_PATTERN_PARAMETERS);

  set_reg_field_value(
   value,
   6,
   CRTC_TEST_PATTERN_PARAMETERS,
   CRTC_TEST_PATTERN_VRES);
  set_reg_field_value(
   value,
   6,
   CRTC_TEST_PATTERN_PARAMETERS,
   CRTC_TEST_PATTERN_HRES);

  dm_write_reg(ctx, addr, value);

  addr = CRTC_REG(mmCRTC_TEST_PATTERN_CONTROL);
  value = 0;

  set_reg_field_value(
   value,
   1,
   CRTC_TEST_PATTERN_CONTROL,
   CRTC_TEST_PATTERN_EN);

  set_reg_field_value(
   value,
   mode,
   CRTC_TEST_PATTERN_CONTROL,
   CRTC_TEST_PATTERN_MODE);

  set_reg_field_value(
   value,
   dyn_range,
   CRTC_TEST_PATTERN_CONTROL,
   CRTC_TEST_PATTERN_DYNAMIC_RANGE);
  set_reg_field_value(
   value,
   bit_depth,
   CRTC_TEST_PATTERN_CONTROL,
   CRTC_TEST_PATTERN_COLOR_FORMAT);
  dm_write_reg(ctx, addr, value);
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

  value = 0;
  addr = CRTC_REG(mmCRTC_TEST_PATTERN_PARAMETERS);
  dm_write_reg(ctx, addr, value);
  value = 0;
  addr = CRTC_REG(mmCRTC_TEST_PATTERN_COLOR);
  for (index = 0; index < 6; index++) {



   set_reg_field_value(
    value,
    (1 << index),
    CRTC_TEST_PATTERN_COLOR,
    CRTC_TEST_PATTERN_MASK);

   dm_write_reg(ctx, addr, value);



   set_reg_field_value(
    value,
    dst_color[index],
    CRTC_TEST_PATTERN_COLOR,
    CRTC_TEST_PATTERN_DATA);
  }



  dm_write_reg(ctx, addr, value);


  addr = CRTC_REG(mmCRTC_TEST_PATTERN_CONTROL);
  value = 0;

  set_reg_field_value(
   value,
   1,
   CRTC_TEST_PATTERN_CONTROL,
   CRTC_TEST_PATTERN_EN);

  set_reg_field_value(
   value,
   mode,
   CRTC_TEST_PATTERN_CONTROL,
   CRTC_TEST_PATTERN_MODE);

  set_reg_field_value(
   value,
   0,
   CRTC_TEST_PATTERN_CONTROL,
   CRTC_TEST_PATTERN_DYNAMIC_RANGE);

  set_reg_field_value(
   value,
   bit_depth,
   CRTC_TEST_PATTERN_CONTROL,
   CRTC_TEST_PATTERN_COLOR_FORMAT);

  dm_write_reg(ctx, addr, value);
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

  value = 0;
  addr = CRTC_REG(mmCRTC_TEST_PATTERN_PARAMETERS);

  switch (bit_depth) {
  case 129:
  {
   set_reg_field_value(
    value,
    inc_base,
    CRTC_TEST_PATTERN_PARAMETERS,
    CRTC_TEST_PATTERN_INC0);
   set_reg_field_value(
    value,
    0,
    CRTC_TEST_PATTERN_PARAMETERS,
    CRTC_TEST_PATTERN_INC1);
   set_reg_field_value(
    value,
    6,
    CRTC_TEST_PATTERN_PARAMETERS,
    CRTC_TEST_PATTERN_HRES);
   set_reg_field_value(
    value,
    6,
    CRTC_TEST_PATTERN_PARAMETERS,
    CRTC_TEST_PATTERN_VRES);
   set_reg_field_value(
    value,
    0,
    CRTC_TEST_PATTERN_PARAMETERS,
    CRTC_TEST_PATTERN_RAMP0_OFFSET);
  }
  break;
  case 128:
  {
   set_reg_field_value(
    value,
    inc_base,
    CRTC_TEST_PATTERN_PARAMETERS,
    CRTC_TEST_PATTERN_INC0);
   set_reg_field_value(
    value,
    0,
    CRTC_TEST_PATTERN_PARAMETERS,
    CRTC_TEST_PATTERN_INC1);
   set_reg_field_value(
    value,
    8,
    CRTC_TEST_PATTERN_PARAMETERS,
    CRTC_TEST_PATTERN_HRES);
   set_reg_field_value(
    value,
    6,
    CRTC_TEST_PATTERN_PARAMETERS,
    CRTC_TEST_PATTERN_VRES);
   set_reg_field_value(
    value,
    0,
    CRTC_TEST_PATTERN_PARAMETERS,
    CRTC_TEST_PATTERN_RAMP0_OFFSET);
  }
  break;
  case 130:
  {
   set_reg_field_value(
    value,
    inc_base,
    CRTC_TEST_PATTERN_PARAMETERS,
    CRTC_TEST_PATTERN_INC0);
   set_reg_field_value(
    value,
    inc_base + 2,
    CRTC_TEST_PATTERN_PARAMETERS,
    CRTC_TEST_PATTERN_INC1);
   set_reg_field_value(
    value,
    8,
    CRTC_TEST_PATTERN_PARAMETERS,
    CRTC_TEST_PATTERN_HRES);
   set_reg_field_value(
    value,
    5,
    CRTC_TEST_PATTERN_PARAMETERS,
    CRTC_TEST_PATTERN_VRES);
   set_reg_field_value(
    value,
    384 << 6,
    CRTC_TEST_PATTERN_PARAMETERS,
    CRTC_TEST_PATTERN_RAMP0_OFFSET);
  }
  break;
  default:
  break;
  }
  dm_write_reg(ctx, addr, value);

  value = 0;
  addr = CRTC_REG(mmCRTC_TEST_PATTERN_COLOR);
  dm_write_reg(ctx, addr, value);


  addr = CRTC_REG(mmCRTC_TEST_PATTERN_CONTROL);
  value = 0;

  set_reg_field_value(
   value,
   1,
   CRTC_TEST_PATTERN_CONTROL,
   CRTC_TEST_PATTERN_EN);

  set_reg_field_value(
   value,
   mode,
   CRTC_TEST_PATTERN_CONTROL,
   CRTC_TEST_PATTERN_MODE);

  set_reg_field_value(
   value,
   0,
   CRTC_TEST_PATTERN_CONTROL,
   CRTC_TEST_PATTERN_DYNAMIC_RANGE);

  set_reg_field_value(
   value,
   bit_depth,
   CRTC_TEST_PATTERN_CONTROL,
   CRTC_TEST_PATTERN_COLOR_FORMAT);

  dm_write_reg(ctx, addr, value);
 }
 break;
 case 131:
 {
  value = 0;
  dm_write_reg(ctx, CRTC_REG(mmCRTC_TEST_PATTERN_CONTROL), value);
  dm_write_reg(ctx, CRTC_REG(mmCRTC_TEST_PATTERN_COLOR), value);
  dm_write_reg(ctx, CRTC_REG(mmCRTC_TEST_PATTERN_PARAMETERS),
    value);
 }
 break;
 default:
 break;
 }
}
