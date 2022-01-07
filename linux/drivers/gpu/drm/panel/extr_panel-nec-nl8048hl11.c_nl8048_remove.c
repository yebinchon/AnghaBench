
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct nl8048_panel {int panel; } ;


 int drm_panel_disable (int *) ;
 int drm_panel_remove (int *) ;
 int drm_panel_unprepare (int *) ;
 struct nl8048_panel* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int nl8048_remove(struct spi_device *spi)
{
 struct nl8048_panel *lcd = spi_get_drvdata(spi);

 drm_panel_remove(&lcd->panel);
 drm_panel_disable(&lcd->panel);
 drm_panel_unprepare(&lcd->panel);

 return 0;
}
