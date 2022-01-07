
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_image_convert_ctx {int aborting; } ;


 int __ipu_image_convert_abort (struct ipu_image_convert_ctx*) ;

void ipu_image_convert_abort(struct ipu_image_convert_ctx *ctx)
{
 __ipu_image_convert_abort(ctx);
 ctx->aborting = 0;
}
