
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct decon_context {scalar_t__ encoder; int crtc; } ;


 int decon_ctx_remove (struct decon_context*) ;
 int decon_disable (int ) ;
 struct decon_context* dev_get_drvdata (struct device*) ;
 int exynos_dpi_remove (scalar_t__) ;

__attribute__((used)) static void decon_unbind(struct device *dev, struct device *master,
   void *data)
{
 struct decon_context *ctx = dev_get_drvdata(dev);

 decon_disable(ctx->crtc);

 if (ctx->encoder)
  exynos_dpi_remove(ctx->encoder);

 decon_ctx_remove(ctx);
}
