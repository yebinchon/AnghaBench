
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector {int dummy; } ;
struct adv7511 {int dummy; } ;


 int adv7511_get_modes (struct adv7511*,struct drm_connector*) ;
 struct adv7511* connector_to_adv7511 (struct drm_connector*) ;

__attribute__((used)) static int adv7511_connector_get_modes(struct drm_connector *connector)
{
 struct adv7511 *adv = connector_to_adv7511(connector);

 return adv7511_get_modes(adv, connector);
}
