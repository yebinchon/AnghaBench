
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_connector {int dummy; } ;
struct TYPE_2__ {int gpiod_hpd; } ;
struct anx78xx {TYPE_1__ pdata; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;


 int connector_status_connected ;
 int connector_status_disconnected ;
 struct anx78xx* connector_to_anx78xx (struct drm_connector*) ;
 int gpiod_get_value (int ) ;

__attribute__((used)) static enum drm_connector_status anx78xx_detect(struct drm_connector *connector,
      bool force)
{
 struct anx78xx *anx78xx = connector_to_anx78xx(connector);

 if (!gpiod_get_value(anx78xx->pdata.gpiod_hpd))
  return connector_status_disconnected;

 return connector_status_connected;
}
