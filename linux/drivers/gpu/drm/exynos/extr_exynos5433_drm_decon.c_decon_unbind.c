
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct decon_context {int dev; int drm_dev; int crtc; } ;


 int decon_disable (int ) ;
 struct decon_context* dev_get_drvdata (struct device*) ;
 int exynos_drm_unregister_dma (int ,int ) ;

__attribute__((used)) static void decon_unbind(struct device *dev, struct device *master, void *data)
{
 struct decon_context *ctx = dev_get_drvdata(dev);

 decon_disable(ctx->crtc);


 exynos_drm_unregister_dma(ctx->drm_dev, ctx->dev);
}
