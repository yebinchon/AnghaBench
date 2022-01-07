
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct drm_device {int dummy; } ;


 int drm_atomic_helper_shutdown (struct drm_device*) ;
 int drm_dev_unplug (struct drm_device*) ;
 struct drm_device* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int hx8357d_remove(struct spi_device *spi)
{
 struct drm_device *drm = spi_get_drvdata(spi);

 drm_dev_unplug(drm);
 drm_atomic_helper_shutdown(drm);

 return 0;
}
