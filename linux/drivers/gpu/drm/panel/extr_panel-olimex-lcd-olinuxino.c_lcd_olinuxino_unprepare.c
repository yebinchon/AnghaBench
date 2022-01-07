
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_olinuxino {int prepared; int supply; int enable_gpio; } ;
struct drm_panel {int dummy; } ;


 int gpiod_set_value_cansleep (int ,int ) ;
 int regulator_disable (int ) ;
 struct lcd_olinuxino* to_lcd_olinuxino (struct drm_panel*) ;

__attribute__((used)) static int lcd_olinuxino_unprepare(struct drm_panel *panel)
{
 struct lcd_olinuxino *lcd = to_lcd_olinuxino(panel);

 if (!lcd->prepared)
  return 0;

 gpiod_set_value_cansleep(lcd->enable_gpio, 0);
 regulator_disable(lcd->supply);

 lcd->prepared = 0;

 return 0;
}
