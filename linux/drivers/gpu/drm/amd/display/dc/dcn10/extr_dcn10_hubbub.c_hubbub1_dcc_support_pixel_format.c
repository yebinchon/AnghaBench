
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum surface_pixel_format { ____Placeholder_surface_pixel_format } surface_pixel_format ;
__attribute__((used)) static bool hubbub1_dcc_support_pixel_format(
  enum surface_pixel_format format,
  unsigned int *bytes_per_element)
{

 switch (format) {
 case 133:
 case 128:
  *bytes_per_element = 2;
  return 1;
 case 129:
 case 134:
 case 130:
 case 135:
  *bytes_per_element = 4;
  return 1;
 case 132:
 case 131:
 case 136:
  *bytes_per_element = 8;
  return 1;
 default:
  return 0;
 }
}
