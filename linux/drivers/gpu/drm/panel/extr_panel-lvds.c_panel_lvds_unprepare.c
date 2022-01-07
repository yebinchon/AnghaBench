
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panel_lvds {scalar_t__ supply; scalar_t__ enable_gpio; } ;
struct drm_panel {int dummy; } ;


 int gpiod_set_value_cansleep (scalar_t__,int ) ;
 int regulator_disable (scalar_t__) ;
 struct panel_lvds* to_panel_lvds (struct drm_panel*) ;

__attribute__((used)) static int panel_lvds_unprepare(struct drm_panel *panel)
{
 struct panel_lvds *lvds = to_panel_lvds(panel);

 if (lvds->enable_gpio)
  gpiod_set_value_cansleep(lvds->enable_gpio, 0);

 if (lvds->supply)
  regulator_disable(lvds->supply);

 return 0;
}
