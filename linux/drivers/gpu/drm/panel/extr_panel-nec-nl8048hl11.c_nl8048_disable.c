
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nl8048_panel {int reset_gpio; } ;
struct drm_panel {int dummy; } ;


 int gpiod_set_value_cansleep (int ,int ) ;
 struct nl8048_panel* to_nl8048_device (struct drm_panel*) ;

__attribute__((used)) static int nl8048_disable(struct drm_panel *panel)
{
 struct nl8048_panel *lcd = to_nl8048_device(panel);

 gpiod_set_value_cansleep(lcd->reset_gpio, 0);

 return 0;
}
