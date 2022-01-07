
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ls037v7dw01_panel {int resb_gpio; int ini_gpio; } ;
struct drm_panel {int dummy; } ;


 int gpiod_set_value_cansleep (int ,int ) ;
 int msleep (int) ;
 struct ls037v7dw01_panel* to_ls037v7dw01_device (struct drm_panel*) ;

__attribute__((used)) static int ls037v7dw01_disable(struct drm_panel *panel)
{
 struct ls037v7dw01_panel *lcd = to_ls037v7dw01_device(panel);

 gpiod_set_value_cansleep(lcd->ini_gpio, 0);
 gpiod_set_value_cansleep(lcd->resb_gpio, 0);


 msleep(100);

 return 0;
}
