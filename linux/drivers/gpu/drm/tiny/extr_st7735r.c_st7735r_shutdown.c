
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;


 int drm_atomic_helper_shutdown (int ) ;
 int spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static void st7735r_shutdown(struct spi_device *spi)
{
 drm_atomic_helper_shutdown(spi_get_drvdata(spi));
}
