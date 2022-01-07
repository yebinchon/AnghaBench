
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int array_mode; } ;
union dc_tiling_info {TYPE_1__ gfx8; } ;
typedef enum surface_pixel_format { ____Placeholder_surface_pixel_format } surface_pixel_format ;
 int SURFACE_PIXEL_FORMAT_INVALID ;
 int SURFACE_PIXEL_FORMAT_VIDEO_BEGIN ;
 unsigned int const** dvmm_Hw_Setting_1DTiling ;
 unsigned int const** dvmm_Hw_Setting_2DTiling ;
 unsigned int const** dvmm_Hw_Setting_Linear ;

__attribute__((used)) static const unsigned int *get_dvmm_hw_setting(
  union dc_tiling_info *tiling_info,
  enum surface_pixel_format format,
  bool chroma)
{
 enum bits_per_pixel {
  bpp_8 = 0,
  bpp_16,
  bpp_32,
  bpp_64
 } bpp;

 if (format >= SURFACE_PIXEL_FORMAT_INVALID)
  bpp = bpp_32;
 else if (format >= SURFACE_PIXEL_FORMAT_VIDEO_BEGIN)
  bpp = chroma ? bpp_16 : bpp_8;
 else
  bpp = bpp_8;

 switch (tiling_info->gfx8.array_mode) {
 case 136:
 case 137:
 case 128:
  return dvmm_Hw_Setting_1DTiling[bpp];
 case 134:
 case 135:
 case 133:
 case 129:
 case 130:
  return dvmm_Hw_Setting_2DTiling[bpp];
 case 131:
 case 132:
  return dvmm_Hw_Setting_Linear[bpp];
 default:
  return dvmm_Hw_Setting_2DTiling[bpp];
 }
}
