
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tc_data {scalar_t__ hpd_pin; int regmap; scalar_t__ panel; } ;
struct drm_connector {int dummy; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;


 int BIT (scalar_t__) ;
 int GPIOI ;
 int connector_status_connected ;
 int connector_status_disconnected ;
 int connector_status_unknown ;
 struct tc_data* connector_to_tc (struct drm_connector*) ;
 int regmap_read (int ,int ,int*) ;

__attribute__((used)) static enum drm_connector_status tc_connector_detect(struct drm_connector *connector,
           bool force)
{
 struct tc_data *tc = connector_to_tc(connector);
 bool conn;
 u32 val;
 int ret;

 if (tc->hpd_pin < 0) {
  if (tc->panel)
   return connector_status_connected;
  else
   return connector_status_unknown;
 }

 ret = regmap_read(tc->regmap, GPIOI, &val);
 if (ret)
  return connector_status_unknown;

 conn = val & BIT(tc->hpd_pin);

 if (conn)
  return connector_status_connected;
 else
  return connector_status_disconnected;
}
