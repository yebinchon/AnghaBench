
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int cursor_mode_to_drm(int mode)
{
 int cursor_pixel_formats_index = 4;

 switch (mode) {
 case 131:
  cursor_pixel_formats_index = 0;
  break;
 case 130:
  cursor_pixel_formats_index = 1;
  break;
 case 128:
  cursor_pixel_formats_index = 2;
  break;
 case 129:
  cursor_pixel_formats_index = 3;
  break;

 default:
  break;
 }

 return cursor_pixel_formats_index;
}
