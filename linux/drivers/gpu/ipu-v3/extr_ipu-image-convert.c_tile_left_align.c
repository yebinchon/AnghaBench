
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipu_image_pixfmt {int uv_width_dec; int bpp; scalar_t__ uv_packed; scalar_t__ planar; } ;



__attribute__((used)) static inline u32 tile_left_align(const struct ipu_image_pixfmt *fmt)
{
 if (fmt->planar)
  return fmt->uv_packed ? 8 : 8 * fmt->uv_width_dec;
 else
  return fmt->bpp == 32 ? 2 : fmt->bpp == 16 ? 4 : 8;
}
