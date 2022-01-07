
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector {int dummy; } ;
struct adv7511 {int dummy; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;


 int adv7511_detect (struct adv7511*,struct drm_connector*) ;
 struct adv7511* connector_to_adv7511 (struct drm_connector*) ;

__attribute__((used)) static enum drm_connector_status
adv7511_connector_detect(struct drm_connector *connector, bool force)
{
 struct adv7511 *adv = connector_to_adv7511(connector);

 return adv7511_detect(adv, connector);
}
