
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg_color {int dummy; } ;
struct dc {int dummy; } ;
typedef enum dc_color_space { ____Placeholder_dc_color_space } dc_color_space ;


 size_t BLACK_COLOR_FORMAT_RGB_FULLRANGE ;
 size_t BLACK_COLOR_FORMAT_RGB_LIMITED ;
 size_t BLACK_COLOR_FORMAT_YUV_CV ;
 struct tg_color* black_color_format ;

void color_space_to_black_color(
 const struct dc *dc,
 enum dc_color_space colorspace,
 struct tg_color *black_color)
{
 switch (colorspace) {
 case 132:
 case 130:
 case 129:
 case 131:
 case 128:
 case 146:
  *black_color = black_color_format[BLACK_COLOR_FORMAT_YUV_CV];
  break;

 case 137:
  *black_color =
   black_color_format[BLACK_COLOR_FORMAT_RGB_LIMITED];
  break;






 case 136:
 case 138:
 case 135:
 case 139:
 case 133:
 case 134:
 case 148:
 case 147:
 case 145:
 case 142:
 case 141:
 case 140:
 case 144:
 case 143:

  *black_color =
   black_color_format[BLACK_COLOR_FORMAT_RGB_FULLRANGE];

  break;
 }
}
