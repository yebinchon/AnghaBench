
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct td043mtea1_panel {int spi_suspended; } ;
struct drm_panel {int dummy; } ;


 int td043mtea1_power_off (struct td043mtea1_panel*) ;
 struct td043mtea1_panel* to_td043mtea1_device (struct drm_panel*) ;

__attribute__((used)) static int td043mtea1_unprepare(struct drm_panel *panel)
{
 struct td043mtea1_panel *lcd = to_td043mtea1_device(panel);

 if (!lcd->spi_suspended)
  td043mtea1_power_off(lcd);

 return 0;
}
