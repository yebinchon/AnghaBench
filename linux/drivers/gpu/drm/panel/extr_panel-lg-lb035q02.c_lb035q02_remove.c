
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct lb035q02_device {int panel; } ;


 int drm_panel_disable (int *) ;
 int drm_panel_remove (int *) ;
 struct lb035q02_device* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int lb035q02_remove(struct spi_device *spi)
{
 struct lb035q02_device *lcd = spi_get_drvdata(spi);

 drm_panel_remove(&lcd->panel);
 drm_panel_disable(&lcd->panel);

 return 0;
}
