
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct td028ttec1_panel {int backlight; } ;
struct drm_panel {int dummy; } ;


 int JBT_REG_DISPLAY_OFF ;
 int backlight_disable (int ) ;
 int jbt_ret_write_0 (struct td028ttec1_panel*,int ,int *) ;
 struct td028ttec1_panel* to_td028ttec1_device (struct drm_panel*) ;

__attribute__((used)) static int td028ttec1_disable(struct drm_panel *panel)
{
 struct td028ttec1_panel *lcd = to_td028ttec1_device(panel);

 backlight_disable(lcd->backlight);

 jbt_ret_write_0(lcd, JBT_REG_DISPLAY_OFF, ((void*)0));

 return 0;
}
