
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int dummy; } ;
struct drm_connector {int dummy; } ;
struct adv7511 {int dummy; } ;
typedef enum drm_mode_status { ____Placeholder_drm_mode_status } drm_mode_status ;


 int adv7511_mode_valid (struct adv7511*,struct drm_display_mode*) ;
 struct adv7511* connector_to_adv7511 (struct drm_connector*) ;

__attribute__((used)) static enum drm_mode_status
adv7511_connector_mode_valid(struct drm_connector *connector,
        struct drm_display_mode *mode)
{
 struct adv7511 *adv = connector_to_adv7511(connector);

 return adv7511_mode_valid(adv, mode);
}
