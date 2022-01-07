
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dc_color_space { ____Placeholder_dc_color_space } dc_color_space ;


 int COLOR_SPACE_YCBCR709_LIMITED ;

__attribute__((used)) static bool is_ycbcr709_limited_type(
  enum dc_color_space color_space)
{
 bool ret = 0;

 if (color_space == COLOR_SPACE_YCBCR709_LIMITED)
  ret = 1;
 return ret;
}
