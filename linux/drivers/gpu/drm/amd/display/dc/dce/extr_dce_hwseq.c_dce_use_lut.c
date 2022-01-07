
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum surface_pixel_format { ____Placeholder_surface_pixel_format } surface_pixel_format ;





bool dce_use_lut(enum surface_pixel_format format)
{
 switch (format) {
 case 128:
 case 129:
  return 1;
 default:
  return 0;
 }
}
