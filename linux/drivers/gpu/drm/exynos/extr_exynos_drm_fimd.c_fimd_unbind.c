
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fimd_context {scalar_t__ encoder; int dev; int drm_dev; int crtc; } ;
struct device {int dummy; } ;


 struct fimd_context* dev_get_drvdata (struct device*) ;
 int exynos_dpi_remove (scalar_t__) ;
 int exynos_drm_unregister_dma (int ,int ) ;
 int fimd_disable (int ) ;

__attribute__((used)) static void fimd_unbind(struct device *dev, struct device *master,
   void *data)
{
 struct fimd_context *ctx = dev_get_drvdata(dev);

 fimd_disable(ctx->crtc);

 exynos_drm_unregister_dma(ctx->drm_dev, ctx->dev);

 if (ctx->encoder)
  exynos_dpi_remove(ctx->encoder);
}
