
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum surface_pixel_format { ____Placeholder_surface_pixel_format } surface_pixel_format ;
typedef enum pixel_format_description { ____Placeholder_pixel_format_description } pixel_format_description ;


 int PIXEL_FORMAT_FIXED ;
 int PIXEL_FORMAT_FIXED16 ;
 int PIXEL_FORMAT_FLOAT ;
 int SURFACE_PIXEL_FORMAT_GRPH_ABGR16161616F ;
 int SURFACE_PIXEL_FORMAT_GRPH_ARGB16161616 ;
 int SURFACE_PIXEL_FORMAT_GRPH_ARGB16161616F ;

__attribute__((used)) static void dpp1_setup_format_flags(enum surface_pixel_format input_format, enum pixel_format_description *fmt)

{

 if (input_format == SURFACE_PIXEL_FORMAT_GRPH_ARGB16161616F ||
  input_format == SURFACE_PIXEL_FORMAT_GRPH_ABGR16161616F)
  *fmt = PIXEL_FORMAT_FLOAT;
 else if (input_format == SURFACE_PIXEL_FORMAT_GRPH_ARGB16161616)
  *fmt = PIXEL_FORMAT_FIXED16;
 else
  *fmt = PIXEL_FORMAT_FIXED;
}
