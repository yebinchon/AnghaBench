
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct malidp_hw_regmap {unsigned int n_pixel_formats; int features; TYPE_1__* pixel_formats; } ;
struct TYPE_2__ {int layer; scalar_t__ format; int id; } ;


 int AFBC_YUV_422_FORMAT_ID ;
 scalar_t__ DRM_FORMAT_YUYV ;
 int MALIDP_DEVICE_AFBC_YUYV_USE_422_P2 ;
 int MALIDP_INVALID_FORMAT_ID ;

u8 malidp_hw_get_format_id(const struct malidp_hw_regmap *map,
      u8 layer_id, u32 format, bool has_modifier)
{
 unsigned int i;

 for (i = 0; i < map->n_pixel_formats; i++) {
  if (((map->pixel_formats[i].layer & layer_id) == layer_id) &&
      (map->pixel_formats[i].format == format)) {





   if (format == DRM_FORMAT_YUYV &&
       (has_modifier) &&
       (map->features & MALIDP_DEVICE_AFBC_YUYV_USE_422_P2))
    return AFBC_YUV_422_FORMAT_ID;
   else
    return map->pixel_formats[i].id;
  }
 }

 return MALIDP_INVALID_FORMAT_ID;
}
