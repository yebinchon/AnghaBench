
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc4_dpi {int encoder; TYPE_1__* pdev; } ;
struct drm_panel {int dummy; } ;
struct drm_bridge {int dummy; } ;
struct device {int of_node; } ;
struct TYPE_2__ {struct device dev; } ;


 int DRM_MODE_CONNECTOR_DPI ;
 int ENODEV ;
 int drm_bridge_attach (int ,struct drm_bridge*,int *) ;
 int drm_of_find_panel_or_bridge (int ,int ,int ,struct drm_panel**,struct drm_bridge**) ;
 struct drm_bridge* drm_panel_bridge_add (struct drm_panel*,int ) ;

__attribute__((used)) static int vc4_dpi_init_bridge(struct vc4_dpi *dpi)
{
 struct device *dev = &dpi->pdev->dev;
 struct drm_panel *panel;
 struct drm_bridge *bridge;
 int ret;

 ret = drm_of_find_panel_or_bridge(dev->of_node, 0, 0,
       &panel, &bridge);
 if (ret) {



  if (ret == -ENODEV)
   return 0;
  else
   return ret;
 }

 if (panel)
  bridge = drm_panel_bridge_add(panel, DRM_MODE_CONNECTOR_DPI);

 return drm_bridge_attach(dpi->encoder, bridge, ((void*)0));
}
