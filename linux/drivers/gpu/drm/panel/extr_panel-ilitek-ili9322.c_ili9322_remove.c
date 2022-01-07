
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct ili9322 {int panel; } ;


 int drm_panel_remove (int *) ;
 int ili9322_power_off (struct ili9322*) ;
 struct ili9322* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int ili9322_remove(struct spi_device *spi)
{
 struct ili9322 *ili = spi_get_drvdata(spi);

 ili9322_power_off(ili);
 drm_panel_remove(&ili->panel);

 return 0;
}
