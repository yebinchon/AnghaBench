
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef enum transmitter_color_depth { ____Placeholder_transmitter_color_depth } transmitter_color_depth ;


 int ASSERT_CRITICAL (int) ;
 int PIXEL_CLOCK_V7_DEEPCOLOR_RATIO_2_1 ;
 int PIXEL_CLOCK_V7_DEEPCOLOR_RATIO_3_2 ;
 int PIXEL_CLOCK_V7_DEEPCOLOR_RATIO_5_4 ;
 int PIXEL_CLOCK_V7_DEEPCOLOR_RATIO_DIS ;





__attribute__((used)) static uint8_t transmitter_color_depth_to_atom(enum transmitter_color_depth id)
{
 uint8_t atomColorDepth = 0;

 switch (id) {
 case 131:
  atomColorDepth = PIXEL_CLOCK_V7_DEEPCOLOR_RATIO_DIS;
  break;
 case 130:
  atomColorDepth = PIXEL_CLOCK_V7_DEEPCOLOR_RATIO_5_4;
  break;
 case 129:
  atomColorDepth = PIXEL_CLOCK_V7_DEEPCOLOR_RATIO_3_2;
  break;
 case 128:
  atomColorDepth = PIXEL_CLOCK_V7_DEEPCOLOR_RATIO_2_1;
  break;
 default:
  ASSERT_CRITICAL(0);
  break;
 }

 return atomColorDepth;
}
