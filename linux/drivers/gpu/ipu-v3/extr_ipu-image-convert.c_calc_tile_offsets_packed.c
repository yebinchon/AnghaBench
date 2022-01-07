
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ipu_image_pixfmt {int bpp; } ;
struct ipu_image_convert_priv {TYPE_2__* ipu; } ;
struct ipu_image_convert_image {int stride; unsigned int num_rows; unsigned int num_cols; scalar_t__ type; TYPE_1__* tile; struct ipu_image_pixfmt* fmt; } ;
struct ipu_image_convert_ctx {struct ipu_image_convert_chan* chan; } ;
struct ipu_image_convert_chan {int ic_task; struct ipu_image_convert_priv* priv; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int top; int left; int offset; scalar_t__ v_off; scalar_t__ u_off; } ;


 int EINVAL ;
 scalar_t__ IMAGE_CONVERT_IN ;
 int dev_err (int ,char*,int ,struct ipu_image_convert_ctx*,char*,unsigned int,unsigned int,int) ;

__attribute__((used)) static int calc_tile_offsets_packed(struct ipu_image_convert_ctx *ctx,
        struct ipu_image_convert_image *image)
{
 struct ipu_image_convert_chan *chan = ctx->chan;
 struct ipu_image_convert_priv *priv = chan->priv;
 const struct ipu_image_pixfmt *fmt = image->fmt;
 unsigned int row, col, tile = 0;
 u32 bpp, stride, offset;
 u32 row_off, col_off;


 stride = image->stride;
 bpp = fmt->bpp;

 for (row = 0; row < image->num_rows; row++) {
  row_off = image->tile[tile].top * stride;

  for (col = 0; col < image->num_cols; col++) {
   col_off = (image->tile[tile].left * bpp) >> 3;

   offset = row_off + col_off;

   image->tile[tile].offset = offset;
   image->tile[tile].u_off = 0;
   image->tile[tile++].v_off = 0;

   if (offset & 0x7) {
    dev_err(priv->ipu->dev,
     "task %u: ctx %p: %s@[%d,%d]: "
     "phys %08x\n",
     chan->ic_task, ctx,
     image->type == IMAGE_CONVERT_IN ?
     "Input" : "Output", row, col,
     row_off + col_off);
    return -EINVAL;
   }
  }
 }

 return 0;
}
