
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipu_image_convert_priv {TYPE_1__* ipu; } ;
struct ipu_image_convert_image {int num_cols; int num_rows; } ;
struct ipu_image_convert_ctx {int rot_mode; struct ipu_image_convert_image out; struct ipu_image_convert_image in; struct ipu_image_convert_chan* chan; } ;
struct ipu_image_convert_chan {int ic_task; struct ipu_image_convert_priv* priv; } ;
struct TYPE_2__ {int dev; } ;


 int IPU_ROTATE_NONE ;
 int IPU_ROT_BIT_90 ;
 int IPU_ROT_BIT_HFLIP ;
 int IPU_ROT_BIT_VFLIP ;
 int dev_dbg (int ,char*,int ,struct ipu_image_convert_ctx*,int,int,int,int) ;

__attribute__((used)) static int transform_tile_index(struct ipu_image_convert_ctx *ctx,
    int src_row, int src_col)
{
 struct ipu_image_convert_chan *chan = ctx->chan;
 struct ipu_image_convert_priv *priv = chan->priv;
 struct ipu_image_convert_image *s_image = &ctx->in;
 struct ipu_image_convert_image *d_image = &ctx->out;
 int dst_row, dst_col;


 if (ctx->rot_mode == IPU_ROTATE_NONE)
  return src_row * s_image->num_cols + src_col;





 src_row = src_row * 2 - (s_image->num_rows - 1);
 src_col = src_col * 2 - (s_image->num_cols - 1);


 if (ctx->rot_mode & IPU_ROT_BIT_90) {
  dst_col = -src_row;
  dst_row = src_col;
 } else {
  dst_col = src_col;
  dst_row = src_row;
 }


 if (ctx->rot_mode & IPU_ROT_BIT_HFLIP)
  dst_col = -dst_col;
 if (ctx->rot_mode & IPU_ROT_BIT_VFLIP)
  dst_row = -dst_row;

 dev_dbg(priv->ipu->dev, "task %u: ctx %p: [%d,%d] --> [%d,%d]\n",
  chan->ic_task, ctx, src_col, src_row, dst_col, dst_row);





 dst_row += d_image->num_rows - 1;
 dst_col += d_image->num_cols - 1;
 dst_row /= 2;
 dst_col /= 2;

 return dst_row * d_image->num_cols + dst_col;
}
