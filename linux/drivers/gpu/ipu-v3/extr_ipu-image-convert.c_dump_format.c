
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ipu_image_convert_priv {TYPE_1__* ipu; } ;
struct TYPE_6__ {int height; int width; } ;
struct TYPE_7__ {TYPE_2__ pix; } ;
struct ipu_image_convert_image {scalar_t__ type; TYPE_4__* fmt; int num_rows; int num_cols; TYPE_3__ base; } ;
struct ipu_image_convert_ctx {struct ipu_image_convert_chan* chan; } ;
struct ipu_image_convert_chan {int ic_task; struct ipu_image_convert_priv* priv; } ;
struct TYPE_8__ {int fourcc; } ;
struct TYPE_5__ {int dev; } ;


 scalar_t__ IMAGE_CONVERT_OUT ;
 int dev_dbg (int ,char*,int ,struct ipu_image_convert_ctx*,char*,int ,int ,int ,int ,int,int,int,int) ;

__attribute__((used)) static void dump_format(struct ipu_image_convert_ctx *ctx,
   struct ipu_image_convert_image *ic_image)
{
 struct ipu_image_convert_chan *chan = ctx->chan;
 struct ipu_image_convert_priv *priv = chan->priv;

 dev_dbg(priv->ipu->dev,
  "task %u: ctx %p: %s format: %dx%d (%dx%d tiles), %c%c%c%c\n",
  chan->ic_task, ctx,
  ic_image->type == IMAGE_CONVERT_OUT ? "Output" : "Input",
  ic_image->base.pix.width, ic_image->base.pix.height,
  ic_image->num_cols, ic_image->num_rows,
  ic_image->fmt->fourcc & 0xff,
  (ic_image->fmt->fourcc >> 8) & 0xff,
  (ic_image->fmt->fourcc >> 16) & 0xff,
  (ic_image->fmt->fourcc >> 24) & 0xff);
}
