
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {TYPE_1__* dev; } ;
struct TYPE_2__ {int of_node; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int MAX_ENDPOINTS ;
 int drm_of_panel_bridge_remove (int ,int ,int) ;
 int pm_runtime_disable (TYPE_1__*) ;

void ltdc_unload(struct drm_device *ddev)
{
 int i;

 DRM_DEBUG_DRIVER("\n");

 for (i = 0; i < MAX_ENDPOINTS; i++)
  drm_of_panel_bridge_remove(ddev->dev->of_node, 0, i);

 pm_runtime_disable(ddev->dev);
}
