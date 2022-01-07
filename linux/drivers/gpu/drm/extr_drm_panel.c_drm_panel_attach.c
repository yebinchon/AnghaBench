
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_panel {int drm; struct drm_connector* connector; } ;
struct drm_connector {int dev; } ;


 int EBUSY ;

int drm_panel_attach(struct drm_panel *panel, struct drm_connector *connector)
{
 if (panel->connector)
  return -EBUSY;

 panel->connector = connector;
 panel->drm = connector->dev;

 return 0;
}
