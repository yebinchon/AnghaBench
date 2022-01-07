
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct acx565akm_panel {int panel; scalar_t__ has_bc; } ;


 int acx565akm_backlight_cleanup (struct acx565akm_panel*) ;
 int drm_panel_disable (int *) ;
 int drm_panel_remove (int *) ;
 int drm_panel_unprepare (int *) ;
 struct acx565akm_panel* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int acx565akm_remove(struct spi_device *spi)
{
 struct acx565akm_panel *lcd = spi_get_drvdata(spi);

 drm_panel_remove(&lcd->panel);

 if (lcd->has_bc)
  acx565akm_backlight_cleanup(lcd);

 drm_panel_disable(&lcd->panel);
 drm_panel_unprepare(&lcd->panel);

 return 0;
}
