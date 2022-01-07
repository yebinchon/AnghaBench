
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nt39016 {int supply; int reset_gpio; } ;
struct drm_panel {int dummy; } ;


 int gpiod_set_value_cansleep (int ,int) ;
 int regulator_disable (int ) ;
 struct nt39016* to_nt39016 (struct drm_panel*) ;

__attribute__((used)) static int nt39016_unprepare(struct drm_panel *drm_panel)
{
 struct nt39016 *panel = to_nt39016(drm_panel);

 gpiod_set_value_cansleep(panel->reset_gpio, 1);

 regulator_disable(panel->supply);

 return 0;
}
