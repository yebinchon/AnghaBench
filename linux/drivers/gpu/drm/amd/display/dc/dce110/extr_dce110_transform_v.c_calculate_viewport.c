
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int x; int y; int width; int height; } ;
struct scaler_data {scalar_t__ format; TYPE_1__ viewport; } ;
struct rect {int x; int y; int width; int height; } ;


 scalar_t__ PIXEL_FORMAT_420BPP8 ;

__attribute__((used)) static void calculate_viewport(
  const struct scaler_data *scl_data,
  struct rect *luma_viewport,
  struct rect *chroma_viewport)
{

 luma_viewport->x = scl_data->viewport.x - scl_data->viewport.x % 2;
 luma_viewport->y = scl_data->viewport.y - scl_data->viewport.y % 2;
 luma_viewport->width =
  scl_data->viewport.width - scl_data->viewport.width % 2;
 luma_viewport->height =
  scl_data->viewport.height - scl_data->viewport.height % 2;
 chroma_viewport->x = luma_viewport->x;
 chroma_viewport->y = luma_viewport->y;
 chroma_viewport->height = luma_viewport->height;
 chroma_viewport->width = luma_viewport->width;

 if (scl_data->format == PIXEL_FORMAT_420BPP8) {
  luma_viewport->height += luma_viewport->height % 2;
  luma_viewport->width += luma_viewport->width % 2;



  chroma_viewport->x = luma_viewport->x / 2;
  chroma_viewport->y = luma_viewport->y / 2;
  chroma_viewport->height = luma_viewport->height / 2;
  chroma_viewport->width = luma_viewport->width / 2;
 }
}
