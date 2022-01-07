
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ipu_image_convert_priv {TYPE_2__* ipu; } ;
struct TYPE_7__ {int bytesperline; int width; int pixelformat; } ;
struct ipu_image {TYPE_3__ pix; } ;
struct ipu_image_convert_image {int type; struct ipu_image base; int stride; TYPE_4__* fmt; } ;
struct ipu_image_convert_ctx {TYPE_1__* chan; } ;
typedef enum ipu_image_convert_type { ____Placeholder_ipu_image_convert_type } ipu_image_convert_type ;
struct TYPE_8__ {scalar_t__ planar; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {struct ipu_image_convert_priv* priv; } ;


 int EINVAL ;
 int IMAGE_CONVERT_OUT ;
 int dev_err (int ,char*,char*) ;
 TYPE_4__* get_format (int ) ;

__attribute__((used)) static int fill_image(struct ipu_image_convert_ctx *ctx,
        struct ipu_image_convert_image *ic_image,
        struct ipu_image *image,
        enum ipu_image_convert_type type)
{
 struct ipu_image_convert_priv *priv = ctx->chan->priv;

 ic_image->base = *image;
 ic_image->type = type;

 ic_image->fmt = get_format(image->pix.pixelformat);
 if (!ic_image->fmt) {
  dev_err(priv->ipu->dev, "pixelformat not supported for %s\n",
   type == IMAGE_CONVERT_OUT ? "Output" : "Input");
  return -EINVAL;
 }

 if (ic_image->fmt->planar)
  ic_image->stride = ic_image->base.pix.width;
 else
  ic_image->stride = ic_image->base.pix.bytesperline;

 return 0;
}
