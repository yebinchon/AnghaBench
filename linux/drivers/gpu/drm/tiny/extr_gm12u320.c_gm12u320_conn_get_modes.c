
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector {int dummy; } ;


 int drm_add_edid_modes (struct drm_connector*,int *) ;
 int drm_connector_update_edid_property (struct drm_connector*,int *) ;
 int gm12u320_edid ;

__attribute__((used)) static int gm12u320_conn_get_modes(struct drm_connector *connector)
{
 drm_connector_update_edid_property(connector, &gm12u320_edid);
 return drm_add_edid_modes(connector, &gm12u320_edid);
}
