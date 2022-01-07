
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tfp410 {int powerdown; } ;
struct drm_bridge {int dummy; } ;


 struct tfp410* drm_bridge_to_tfp410 (struct drm_bridge*) ;
 int gpiod_set_value_cansleep (int ,int) ;

__attribute__((used)) static void tfp410_disable(struct drm_bridge *bridge)
{
 struct tfp410 *dvi = drm_bridge_to_tfp410(bridge);

 gpiod_set_value_cansleep(dvi->powerdown, 1);
}
