
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ls037v7dw01_panel {int ini_gpio; int resb_gpio; } ;
struct drm_panel {int dummy; } ;


 int gpiod_set_value_cansleep (int ,int) ;
 int msleep (int) ;
 struct ls037v7dw01_panel* to_ls037v7dw01_device (struct drm_panel*) ;

__attribute__((used)) static int ls037v7dw01_enable(struct drm_panel *panel)
{
 struct ls037v7dw01_panel *lcd = to_ls037v7dw01_device(panel);


 msleep(50);

 gpiod_set_value_cansleep(lcd->resb_gpio, 1);
 gpiod_set_value_cansleep(lcd->ini_gpio, 1);

 return 0;
}
