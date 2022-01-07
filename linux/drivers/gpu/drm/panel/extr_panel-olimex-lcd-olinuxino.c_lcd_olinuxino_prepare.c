
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_olinuxino {int prepared; int enable_gpio; int supply; } ;
struct drm_panel {int dummy; } ;


 int gpiod_set_value_cansleep (int ,int) ;
 int regulator_enable (int ) ;
 struct lcd_olinuxino* to_lcd_olinuxino (struct drm_panel*) ;

__attribute__((used)) static int lcd_olinuxino_prepare(struct drm_panel *panel)
{
 struct lcd_olinuxino *lcd = to_lcd_olinuxino(panel);
 int ret;

 if (lcd->prepared)
  return 0;

 ret = regulator_enable(lcd->supply);
 if (ret < 0)
  return ret;

 gpiod_set_value_cansleep(lcd->enable_gpio, 1);
 lcd->prepared = 1;

 return 0;
}
