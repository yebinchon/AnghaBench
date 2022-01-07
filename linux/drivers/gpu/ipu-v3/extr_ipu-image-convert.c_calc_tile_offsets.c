
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipu_image_convert_image {TYPE_1__* fmt; } ;
struct ipu_image_convert_ctx {int dummy; } ;
struct TYPE_2__ {scalar_t__ planar; } ;


 int calc_tile_offsets_packed (struct ipu_image_convert_ctx*,struct ipu_image_convert_image*) ;
 int calc_tile_offsets_planar (struct ipu_image_convert_ctx*,struct ipu_image_convert_image*) ;

__attribute__((used)) static int calc_tile_offsets(struct ipu_image_convert_ctx *ctx,
         struct ipu_image_convert_image *image)
{
 if (image->fmt->planar)
  return calc_tile_offsets_planar(ctx, image);

 return calc_tile_offsets_packed(ctx, image);
}
