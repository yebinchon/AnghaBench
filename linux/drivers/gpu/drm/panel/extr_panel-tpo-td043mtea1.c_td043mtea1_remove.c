
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct td043mtea1_panel {int panel; } ;
struct TYPE_2__ {int kobj; } ;
struct spi_device {TYPE_1__ dev; } ;


 int drm_panel_disable (int *) ;
 int drm_panel_remove (int *) ;
 int drm_panel_unprepare (int *) ;
 struct td043mtea1_panel* spi_get_drvdata (struct spi_device*) ;
 int sysfs_remove_group (int *,int *) ;
 int td043mtea1_attr_group ;

__attribute__((used)) static int td043mtea1_remove(struct spi_device *spi)
{
 struct td043mtea1_panel *lcd = spi_get_drvdata(spi);

 drm_panel_remove(&lcd->panel);
 drm_panel_disable(&lcd->panel);
 drm_panel_unprepare(&lcd->panel);

 sysfs_remove_group(&spi->dev.kobj, &td043mtea1_attr_group);

 return 0;
}
