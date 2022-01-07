
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_bridge {int dummy; } ;
struct adv7511 {int dummy; } ;


 int adv7511_power_on (struct adv7511*) ;
 struct adv7511* bridge_to_adv7511 (struct drm_bridge*) ;

__attribute__((used)) static void adv7511_bridge_enable(struct drm_bridge *bridge)
{
 struct adv7511 *adv = bridge_to_adv7511(bridge);

 adv7511_power_on(adv);
}
