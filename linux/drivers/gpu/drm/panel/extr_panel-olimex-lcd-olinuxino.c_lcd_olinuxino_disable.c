
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_olinuxino {int enabled; int backlight; } ;
struct drm_panel {int dummy; } ;


 int backlight_disable (int ) ;
 struct lcd_olinuxino* to_lcd_olinuxino (struct drm_panel*) ;

__attribute__((used)) static int lcd_olinuxino_disable(struct drm_panel *panel)
{
 struct lcd_olinuxino *lcd = to_lcd_olinuxino(panel);

 if (!lcd->enabled)
  return 0;

 backlight_disable(lcd->backlight);

 lcd->enabled = 0;

 return 0;
}
