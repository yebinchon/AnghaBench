
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_dsi {int dsi_host; } ;
struct drm_encoder {int dummy; } ;
struct device {int dummy; } ;


 struct drm_encoder* dev_get_drvdata (struct device*) ;
 struct exynos_dsi* encoder_to_dsi (struct drm_encoder*) ;
 int exynos_dsi_disable (struct drm_encoder*) ;
 int mipi_dsi_host_unregister (int *) ;

__attribute__((used)) static void exynos_dsi_unbind(struct device *dev, struct device *master,
    void *data)
{
 struct drm_encoder *encoder = dev_get_drvdata(dev);
 struct exynos_dsi *dsi = encoder_to_dsi(encoder);

 exynos_dsi_disable(encoder);

 mipi_dsi_host_unregister(&dsi->dsi_host);
}
