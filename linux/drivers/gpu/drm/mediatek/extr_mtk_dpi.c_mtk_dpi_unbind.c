
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_dpi {int ddp_comp; int encoder; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;


 struct mtk_dpi* dev_get_drvdata (struct device*) ;
 int drm_encoder_cleanup (int *) ;
 int mtk_ddp_comp_unregister (struct drm_device*,int *) ;

__attribute__((used)) static void mtk_dpi_unbind(struct device *dev, struct device *master,
      void *data)
{
 struct mtk_dpi *dpi = dev_get_drvdata(dev);
 struct drm_device *drm_dev = data;

 drm_encoder_cleanup(&dpi->encoder);
 mtk_ddp_comp_unregister(drm_dev, &dpi->ddp_comp);
}
