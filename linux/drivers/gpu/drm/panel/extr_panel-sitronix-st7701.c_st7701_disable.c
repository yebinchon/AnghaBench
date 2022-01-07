
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st7701 {int backlight; } ;
struct drm_panel {int dummy; } ;


 int MIPI_DCS_SET_DISPLAY_OFF ;
 int ST7701_DSI (struct st7701*,int ,int) ;
 int backlight_disable (int ) ;
 struct st7701* panel_to_st7701 (struct drm_panel*) ;

__attribute__((used)) static int st7701_disable(struct drm_panel *panel)
{
 struct st7701 *st7701 = panel_to_st7701(panel);

 backlight_disable(st7701->backlight);
 ST7701_DSI(st7701, MIPI_DCS_SET_DISPLAY_OFF, 0x00);

 return 0;
}
