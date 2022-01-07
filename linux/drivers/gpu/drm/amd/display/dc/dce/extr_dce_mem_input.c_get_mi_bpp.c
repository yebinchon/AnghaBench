
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum surface_pixel_format { ____Placeholder_surface_pixel_format } surface_pixel_format ;
typedef enum mi_bits_per_pixel { ____Placeholder_mi_bits_per_pixel } mi_bits_per_pixel ;


 int SURFACE_PIXEL_FORMAT_GRPH_ARGB1555 ;
 int SURFACE_PIXEL_FORMAT_GRPH_ARGB16161616 ;
 int SURFACE_PIXEL_FORMAT_GRPH_ARGB8888 ;
 int mi_bpp_16 ;
 int mi_bpp_32 ;
 int mi_bpp_64 ;
 int mi_bpp_8 ;

__attribute__((used)) static enum mi_bits_per_pixel get_mi_bpp(
  enum surface_pixel_format format)
{
 if (format >= SURFACE_PIXEL_FORMAT_GRPH_ARGB16161616)
  return mi_bpp_64;
 else if (format >= SURFACE_PIXEL_FORMAT_GRPH_ARGB8888)
  return mi_bpp_32;
 else if (format >= SURFACE_PIXEL_FORMAT_GRPH_ARGB1555)
  return mi_bpp_16;
 else
  return mi_bpp_8;
}
