
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum surface_pixel_format { ____Placeholder_surface_pixel_format } surface_pixel_format ;
bool hubbub2_dcc_support_pixel_format(
  enum surface_pixel_format format,
  unsigned int *bytes_per_element)
{

 switch (format) {
 case 137:
 case 128:
  *bytes_per_element = 2;
  return 1;
 case 133:
 case 138:
 case 134:
 case 139:
 case 130:
 case 132:
 case 129:
 case 131:
  *bytes_per_element = 4;
  return 1;
 case 136:
 case 135:
 case 140:
  *bytes_per_element = 8;
  return 1;
 default:
  return 0;
 }
}
