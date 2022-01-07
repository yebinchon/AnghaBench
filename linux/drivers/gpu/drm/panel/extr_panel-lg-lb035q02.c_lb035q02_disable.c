
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lb035q02_device {int enable_gpio; } ;
struct drm_panel {int dummy; } ;


 int gpiod_set_value_cansleep (int ,int ) ;
 struct lb035q02_device* to_lb035q02_device (struct drm_panel*) ;

__attribute__((used)) static int lb035q02_disable(struct drm_panel *panel)
{
 struct lb035q02_device *lcd = to_lb035q02_device(panel);

 gpiod_set_value_cansleep(lcd->enable_gpio, 0);

 return 0;
}
