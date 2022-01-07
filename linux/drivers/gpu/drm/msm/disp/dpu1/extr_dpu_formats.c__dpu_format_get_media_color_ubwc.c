
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dpu_media_color_map {scalar_t__ format; int color; int const member_1; int member_0; } ;
struct TYPE_2__ {scalar_t__ pixel_format; } ;
struct dpu_format {TYPE_1__ base; scalar_t__ unpack_tight; } ;


 int ARRAY_SIZE (struct dpu_media_color_map const*) ;
 int COLOR_FMT_NV12_BPP10_UBWC ;
 int COLOR_FMT_NV12_UBWC ;
 int COLOR_FMT_P010_UBWC ;



 scalar_t__ DPU_FORMAT_IS_DX (struct dpu_format const*) ;



 scalar_t__ DRM_FORMAT_NV12 ;



__attribute__((used)) static int _dpu_format_get_media_color_ubwc(const struct dpu_format *fmt)
{
 static const struct dpu_media_color_map dpu_media_ubwc_map[] = {
  {131, 133},
  {128, 133},
  {132, 134},
  {129, 134},
  {130, 135},
 };
 int color_fmt = -1;
 int i;

 if (fmt->base.pixel_format == DRM_FORMAT_NV12) {
  if (DPU_FORMAT_IS_DX(fmt)) {
   if (fmt->unpack_tight)
    color_fmt = COLOR_FMT_NV12_BPP10_UBWC;
   else
    color_fmt = COLOR_FMT_P010_UBWC;
  } else
   color_fmt = COLOR_FMT_NV12_UBWC;
  return color_fmt;
 }

 for (i = 0; i < ARRAY_SIZE(dpu_media_ubwc_map); ++i)
  if (fmt->base.pixel_format == dpu_media_ubwc_map[i].format) {
   color_fmt = dpu_media_ubwc_map[i].color;
   break;
  }
 return color_fmt;
}
