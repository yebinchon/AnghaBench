
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct nt39016 {int drm_panel; } ;


 int drm_panel_remove (int *) ;
 int nt39016_disable (int *) ;
 int nt39016_unprepare (int *) ;
 struct nt39016* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int nt39016_remove(struct spi_device *spi)
{
 struct nt39016 *panel = spi_get_drvdata(spi);

 drm_panel_remove(&panel->drm_panel);

 nt39016_disable(&panel->drm_panel);
 nt39016_unprepare(&panel->drm_panel);

 return 0;
}
