
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dc_color_space { ____Placeholder_dc_color_space } dc_color_space ;


 int COLOR_SPACE_2020_RGB_FULLRANGE ;
 int COLOR_SPACE_ADOBERGB ;
 int COLOR_SPACE_DCIP3 ;
 int COLOR_SPACE_DOLBYVISION ;
 int COLOR_SPACE_MSREF_SCRGB ;
 int COLOR_SPACE_SRGB ;
 int COLOR_SPACE_XR_RGB ;

__attribute__((used)) static bool is_rgb_type(
  enum dc_color_space color_space)
{
 bool ret = 0;

 if (color_space == COLOR_SPACE_SRGB ||
  color_space == COLOR_SPACE_XR_RGB ||
  color_space == COLOR_SPACE_MSREF_SCRGB ||
  color_space == COLOR_SPACE_2020_RGB_FULLRANGE ||
  color_space == COLOR_SPACE_ADOBERGB ||
  color_space == COLOR_SPACE_DCIP3 ||
  color_space == COLOR_SPACE_DOLBYVISION)
  ret = 1;
 return ret;
}
